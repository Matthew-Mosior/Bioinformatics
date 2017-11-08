# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

__author__ = "Matt's 2 in 1"
__date__ = "$Nov 4, 2017 4:06:33 PM$"

#imports
import bioinfocompbppy
import bioinfocompbpaided
import argparse
from itertools import groupby
import re

def main():
    
    parser = argparse.ArgumentParser(description = "DNA sequence analyzer with optional file I/O.")
    parser.add_argument('-rc' , '--revcomplement' , action = "store_true" , help = 'Elucidate the reverse complement DNA of user DNA input.')
    parser.add_argument('-i' , '--input' , dest = "inputFile" , help = 'Allow for user fasta file input.')
    parser.add_argument('-o' , '--output' , dest = "outputFile" , help = 'Output file based on user input.')
    args = parser.parse_args()

    if args.inputFile:
        with open(args.inputFile) as filein:
            lines = filein.readlines()
            firstlinedata = lines[0]
            firstlinestr = str(firstlinedata)
            if ">" in firstlinestr:
                linesafter1 = lines[1:]
                linesafterstr1 = str(linesafter1)
                linematch1 = re.sub('[^ATGCatgc]' , '' , linesafterstr1)
                if args.outputFile:
                    if args.revcomplement:
                        print("Writing to file using synthetic implementation:")
                        with open(args.outputFile , 'w') as outfile1:
                            outfile1.write("FASTA:\n" + firstlinestr + "Here is the reverse complement of your sequence:\n" + bioinfocompbppy.main(linematch1) + "\nHere is the contents of your input file: \n" + linematch1)
                            outfile1.close()
                    else:
                        print("Writing to file using Biopython implementation:")
                        with open(args.outputFile , 'w') as outfile2:
                            outfile2.write("FASTA:\n" + firstlinestr + "Here is the reverse complement of your sequence:\n" + bioinfocompbpaided.main(linematch1) + "\nHere is the contents of your input file: \n" + linematch1)
                            outfile2.close()
                else:
                    if args.revcomplement:
                        print("FASTA:\n" + firstlinestr  + "Using synthetic implementation:")
                        bioinfocompbppy.main(linematch1)
                    else:
                        print("FASTA:\n" + firstlinestr + "Using biopython implementation:")
                        bioinfocompbpaided.main(linematch1)
            else:
                linesafter2 = lines[1:]
                linesafter2str = str(linesafter2)
                linematch2 = re.sub('[^ATGCatgc]' , '' , linesafter2str)
                if args.outputFile:
                    if args.revcomplement:
                        print("Writing to file using synthetic implementation:")
                        with open(args.outputFile , 'w') as outfile3:
                            outfile3.write("Here is the reverse complement of your sequence:\n" + bioinfocompbppy.main(linematch2) + "\nHere is the contents of your input file: \n" + linematch2)
                            outfile3.close()
                    else:
                        print("Writing to file using Biopython implementation:")
                        with open(args.outputFile , 'w') as outfile4:
                            outfile4.write("Here is the reverse complement of your sequence:\n" + bioinfocompbpaided.main(linematch2) + "\nHere is the contents of your input file: \n" + linematch2)
                            outfile4.close()
                else:
                    if args.revcomplement:
                        print('Using synthetic implementation:')
                        bioinfocompbppy.main(linematch2)
                    else:
                        print('Using biopython implementation:')
                        bioinfocompbpaided.main(linematch2)

    else:
        userinput = input('Please enter your DNA sequence:')
        if args.outputFile:
            if args.revcomplement:
                print("Writing to file using synthetic implementation:")
                with open(args.outputFile , 'w') as outfile1:
                    outfile1.write("Here is the reverse complement of your sequence:\n" + bioinfocompbppy.main(userinput) +  "\nReverse complement of your original input: \n" + userinput)
                    outfile1.close()
            else:
                print("Writing to file using Biopython implementation:")
                with open(args.outputFile , 'w') as outfile2:
                    outfile2.write("Here is the reverse complement of your sequence:\n" + bioinfocompbpaided.main(userinput) + "\nReverse Complement of your original input: \n" + userinput)
                    outfile2.close()
        else:
            if args.revcomplement:
                print('Using synthetic implementation:')
                bioinfocompbppy.main(userinput)
            else:
                print('Using biopython implementation:')
                bioinfocompbpaided.main(userinput)
        
if __name__ == "__main__":
    main()
