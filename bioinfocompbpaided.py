# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

__author__ = "Matt's 2 in 1"
__date__ = "$Oct 30, 2017 12:59:48 AM$"

#This program will take a users DNA sequence input and return the complementary DNA sequence.
#Program accomplished task with the use of Bio.seq imports (Biopython).

#imports:

import re
import os
import sys
from Bio.Seq import Seq

#Functions:


def main(userDNAinput):
    print ("Welcome to Matt's DNA sequence reader.")

    #Call Seq().
    bio_seq_user_DNA_seq = Seq(userDNAinput)

    #Call reverse_complement().
    reverse_bio_seq_DNA_seq = bio_seq_user_DNA_seq.reverse_complement()

    print ("Here is the complimentary user DNA sequence:")

    print (reverse_bio_seq_DNA_seq)

    print ("Thanks for using Matt's DNA sequence reader!")

    seqstringfinal = str(reverse_bio_seq_DNA_seq)
    
    return seqstringfinal

    #Exit the program.

    sys.exit()

if __name__ == "__main__":
    main()
