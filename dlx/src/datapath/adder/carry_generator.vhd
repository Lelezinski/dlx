library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use WORK.myTypes.all;

entity CARRY_GENERATOR is
    generic (
        NBIT :          integer := 32;
        NBIT_PER_BLOCK: integer := 4);
    port (
        A :     in  std_logic_vector(NBIT-1 downto 0);
        B :     in  std_logic_vector(NBIT-1 downto 0);
        Cin :   in  std_logic;
        Co :    out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
end CARRY_GENERATOR;

architecture STRUCTURAL of CARRY_GENERATOR is
    -- Structural description of the Carry Generator Block

    -- Top PG Network
    component PG_NETWORK is
        generic (
            NBIT_PER_BLOCK : integer := CARRY_SELECT_NBIT;
            NBLOCKS : integer := SUM_GENERATOR_NBLOCKS);
        port (
            A : in std_logic_vector(NBIT - 1 downto 0);
            B : in std_logic_vector(NBIT - 1 downto 0);
            Cin : in std_logic;
            g : out std_logic_vector(NBIT downto 1);
            p : out std_logic_vector(NBIT downto 1));
    end component;

    -- G Block: General GENERATE
    COMPONENT G_BLOCK IS
        PORT (
                 G_left : IN STD_LOGIC;
                 P_left : IN STD_LOGIC;
                 G_right : IN STD_LOGIC;

                 G_out : OUT STD_LOGIC);
    END COMPONENT;

    -- PG Block: General PROPAGATE and General GENERATE
    component PG_BLOCK is
        port (
            G_left : in std_logic;
            P_left : in std_logic;
            G_right : in std_logic;
            P_right : in std_logic;

            P_out : out std_logic;
            G_out : out std_logic);
    end component;	

    -- these are the output signals of the PG network at the top
    -- (0) is p_out array, (1) is g_out array
    -- column range is NBIT..1 like the diagram
    type pg_outputs_t is array (1 downto 0) of std_logic_vector(NBIT downto 1);
    signal pg_outputs: pg_outputs_t;

    -- output signals of pg and g blocks
    -- two log2(NBIT)*(NBIT/2) matrices (it makes for easier indexing)
    -- range 1 to log2(NBIT) is the row index (top-bottom)
    -- range NBIT/2 downto 1 is the column index (left-right).
    type internal_p_outputs_t is array (1 to integer(log2(real(NBIT))), NBIT/2 downto 1) of std_logic;
    signal internal_p_outputs: internal_p_outputs_t;
    type internal_g_outputs_t is array (1 to integer(log2(real(NBIT))), NBIT/2 downto 1) of std_logic;
    signal internal_g_outputs: internal_g_outputs_t;
    
    -- these are the output signals of G blocks 
    -- and are mapped to the output ports
    signal g_outputs: std_logic_vector(NBIT/NBIT_PER_BLOCK-1  downto 0);

    -- constants used during generation
    -- NSTAGE is the number of levels top to bottom calculated from the number of bits
    -- k is the constant sum of PG and G blocks present in rows from 3 onwards
	constant NSTAGE: integer := integer(ceil(log2(real(NBIT))));
	constant k: integer := NBIT/8;

BEGIN
    -- Components Istantiation
    pgn: PG_NETWORK
    GENERIC MAP(CARRY_SELECT_NBIT, SUM_GENERATOR_NBLOCKS)
    port map (
        A => A,
        B => B,
        Cin => Cin,
        p => pg_outputs(0),
        g => pg_outputs(1)
    ); 

    -- for the first and second row, the mapping is straightforward
    -- because every two blocks of the PG network converge into a PG or G block
    -- and that is always true in this case

    -- ROW 1
    row1: for i in 1 to (NBIT)/2 generate
        gen1: if i = 1 generate
            g1: G_BLOCK
            port map (
                G_left  => pg_outputs(1)(2),
                P_left  => pg_outputs(0)(2),
                G_right => pg_outputs(1)(1),

                G_out   => internal_g_outputs(1, 1) 
            );

        end generate gen1; 

        gen2: if i > 1 generate
            p1: PG_BLOCK
            port map (
                G_right => pg_outputs(1)(i*2-1),
                P_right => pg_outputs(0)(i*2-1),
                G_left  => pg_outputs(1)(i*2),
                P_left  => pg_outputs(0)(i*2),

                G_out   => internal_g_outputs(1, i),
                P_out   => internal_p_outputs(1, i) 
            );
        end generate gen2;
    end generate row1;

    -- ROW 2 
    row2: for i in 1 to (NBIT)/4 generate
        gen3: if i = 1 generate
            g2: G_BLOCK
            port map (
                G_left  => internal_g_outputs(1, 2),
                P_left  => internal_p_outputs(1, 2),
                G_right => internal_g_outputs(1, 1),

                G_out   => internal_g_outputs(2, 2) 
            );

	      g_outputs(0) <= internal_g_outputs(2, 2);
        end generate gen3; 

        gen4: if i > 1 generate
            p2: PG_BLOCK
            port map (
                G_right => internal_g_outputs(1, i*2-1),
                P_right => internal_p_outputs(1, i*2-1),
                G_left  => internal_g_outputs(1, i*2),
                P_left  => internal_p_outputs(1, i*2),

                G_out   => internal_g_outputs(2, i*2),
                P_out   => internal_p_outputs(2, i*2) 
            );
        end generate gen4;
    end generate row2;
	
	-- Note: see comments in readme.txt for an in-depth explaination on the workings of this 
	-- following description
	
	-- ROWS 3 TO NSTAGE
	rown: for i in 3 to NSTAGE generate
		col: for j in 1 to k generate
			g3: if j <= 2**(i - 3) generate
          g: G_BLOCK
          port map (
            G_left  => internal_g_outputs(2 + integer(ceil(log2(real(j)))), 2**(i-2) + 2*j),
            P_left  => internal_p_outputs(2 + integer(ceil(log2(real(j)))), 2**(i-2) + 2*j),
            G_right => internal_g_outputs(i - 1, 2**(i - 2)),

            G_out   => internal_g_outputs(i, 2**(i-2) + 2*j) 
          );

          g_outputs(2**(i-3) + j - 1) <= internal_g_outputs(i, 2**(i-2) + 2*j);
			end generate g3;

			g4: if j > 2**(i-3) generate
				p: PG_BLOCK
				port map (
					G_left => internal_g_outputs(
                        2 + integer(ceil(log2(real((((j - 1) mod 2**(i - 3)) + 1))))),
                        (2 * (integer(ceil(real(j) / real(2**(i - 3))))) - 1) * 2**(i - 2) + 2 * (((j - 1) mod 2**(i - 3)) + 1)
                    ) ,
					P_left => internal_p_outputs(
                        2 + integer(ceil(log2(real((((j - 1) mod 2**(i - 3)) + 1))))),
                        (2 * (integer(ceil(real(j) / real(2**(i - 3))))) - 1) * 2**(i - 2) + 2 * (((j - 1) mod 2**(i - 3)) + 1)
                    ),

					G_right  => internal_g_outputs(i - 1,
                        (2 * (integer(ceil(real(j) / real(2**(i - 3))))) - 1) * 2**(i - 2)),
					P_right  => internal_p_outputs(i - 1, 
                        (2 * (integer(ceil(real(j) / real(2**(i - 3))))) - 1) * 2**(i - 2)),

					G_out   => internal_g_outputs(i, 
                        (2 * (integer(ceil(real(j) / real(2**(i - 3))))) - 1) * 2**(i - 2) + 2 * (((j - 1) mod 2**(i - 3)) + 1)
                    ),
					P_out   => internal_p_outputs(i, 
                        (2 * (integer(ceil(real(j) / real(2**(i - 3))))) - 1) * 2**(i - 2) + 2 * (((j - 1) mod 2**(i - 3)) + 1)
                    ) 
				);
			end generate g4;
		end generate col;
	end generate rown;
	
    -- map the output signals
    Co <= g_outputs(NBIT/NBIT_PER_BLOCK-1 downto 0);

end STRUCTURAL;
