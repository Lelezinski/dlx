CAP2 LABORATORY

NECESSARY BUT INSUFFICIENT COMMENTS ON THE PENTIUM 4 ADDER IMPLEMENTATION

Most of the inner workings of the Pentium 4 is illustrated with comments in the provided netlists. 
However, the tree structure is too complex for simple comments so we decided to give a more 
thorough explaination here.


Useful definitions:
i = row index
j = column index
GROUP_DIMENSION = 2**(i - 3)  
NUM_G_BLOCKS_TO_ISTANTIATE = 2**(i - 3)
GROUP_NUMBER = (integer(ceil(real(j) / real(2**(i - 3))))), given the block j to instantiate, it 
															identifies which group it belongs to
ELEMENT_IN_GROUP_INDEX = (((j - 1) mod 2**(i - 3)) + 1), provides an index inside a group starting 
														 from 1 till GROUP_DIMENSION
PREVIOUS_PG_BLOCK_ROW_INDEX = 2 + integer(ceil(log2(real(ELEMENT_IN_GROUP_INDEX))))
LAST_G_BLOCK_FROM_PREVIOUS_ROW_INDEX = 2**(i - 2)

For rows 3 onwards, since the sum of PG and G blocks is constant (k), we count them from 1 to k. 
The number of PG and G blocks in every row depends on the row index: 2**(row_index - 3) is the 
number of G blocks, this number subtracted to k gives us the number of PG blocks. Therefore we 
distinguish two cases: if the column index is lower than 2**(row_index - 3) we instanciate a G 
block, else a PG block.

We define a group as follows.
Starting from row 3 we can observe that blocks G and PG that are 2 units apart (referring to the 
internal signal matrix called internal_g_outputs) can be grouped together. Group dimension grows 
according to the following expression GROUP_DIMENSION. A row with row index 3 has 
k/2**(row_index - 3) = 4 groups of 2**(row_index - 3) = 1  blocks, the next one 2 groups of 2 and so 
on.

Regarding the "_left" signals, we obtain the row index as follows.
The first element of every group receives data from the PG block that is found on row 2 with the 
same column index. 
The second element from the PG block on row 3, following a logarithmic trend, as shown in 
PREVIOUS_PG_BLOCK_ROW_INDEX. 

Regarding the "_left" signals, we obtain the column index as follows.
For PG blocks, the expression used is 
(2 * GROUP_NUMBER - 1) * LAST_G_BLOCK_FROM_PREVIOUS_ROW_INDEX + 2 * ELEMENT_IN_GROUP_INDEX .
For G blocks, the (2 * GROUP_NUMBER - 1) factor is given value 1.

Regarding the "_right" signals, the row index is simply the previous row, while we obtain the 
column with the expression LAST_G_BLOCK_FROM_PREVIOUS_ROW_INDEX.


The expressions that have been used for this explaination had to be unrolled in the netlist due to 
VHDL not supporting variable expressions in the GENERATE sections, greatly decreasing readability.


NOTES
Comments on synthesis can be found in their respective folders for exercises 1.5 and 2.2