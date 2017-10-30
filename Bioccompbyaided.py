import os
import re
import sys
from Bio.Seq import Seq

def main():
    print ("Welcome to Matt's DNA sequence reader.")
    
    #Gather user DNA sequence input.
    userDNAseq = raw_input('Please enter your DNA sequence:')
    
    #Call Seq().
    bio_seq_user_DNA_seq = Seq(userDNAseq)
    
    #Call reverse_complement().
    reverse_bio_seq_DNA_seq = bio_seq_user_DNA_seq.reverse_complement()
    
    print ("Here is the complimentary user DNA sequence:")

    print (reverse_bio_seq_DNA_seq)
    
    print ("Thanks for using Matt's DNA sequence reader!")
    
    #Exit the program.

    sys.exit()

if __name__ == "__main__":
    main()

