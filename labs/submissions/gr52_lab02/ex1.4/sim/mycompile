#!/bin/bash

e=0

vcom constants.vhd && (echo -e "Success... \n") || exit 1
vcom iv.vhd && (echo -e "Success... \n") || exit 1
vcom nd2.vhd && (echo -e "Success... \n") || exit 1
vcom mux21_generic.vhd && (echo -e "Success...\n") || exit 1
vcom fa.vhd && (echo -e "Success... \n") || exit 1
vcom rca.vhd && (echo -e "Success... \n") || exit 1
vcom carry_select.vhd && (echo -e "Success... \n") || exit 1
vcom sum_generator.vhd && (echo -e "Success... \n") || exit 1
vcom pg_network.vhd && (echo -e "Success... \n") || exit 1
vcom g_block.vhd && (echo -e "Success... \n") || exit 1
vcom pg_block.vhd && (echo -e "Success... \n") || exit 1
vcom carry_generator.vhd && (echo -e "Success... \n") || exit 1
vcom p4_adder.vhd && (echo -e "Success... \n") || exit 1
vcom tb_p4_adder.vhd && (echo -e "Success... \n") || exit 1

echo Done.
echo $e errors.
