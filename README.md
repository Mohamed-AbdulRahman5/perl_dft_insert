## Perl_Script_README
# Overview
This Perl script takes a Verilog design file as input and modifies it by adding DFT ports. The modified Verilog design is then saved to a new file.

# Inputs
The script takes two inputs:

The name of the input Verilog design file.
The name of the output file to save the modified Verilog design to.
# Output
The script modifies the input Verilog design file by adding DFT ports before the first occurrence of the pattern 'input' in the file. The modified design is then saved to the output file specified by the user.

# How it works
The script defines a subroutine called insert_dft that takes two arguments: $design (the input Verilog design file) and $DFT_design (the output file to write the modified design to). The insert_dft subroutine does the following:

Opens the input and output files.
Reads the entire contents of the input file into a scalar variable.
Adds DFT ports to the scalar variable.
Writes the modified scalar variable to the output file.
Closes the input and output files.
The script then calls the insert_dft subroutine with the names of the input and output files specified on the command line.

# Usage
To use the script, run the following command on the terminal:

Copy.

 perl script.pl input_file.v output_file.v

Replace script.pl with the name of the Perl script, input_file.v with the name of the Verilog design file you want to modify, and output_file.v with the name you want to give to the modified file.
