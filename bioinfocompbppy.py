# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

__author__ = "Matt's 2 in 1"
__date__ = "$Oct 28, 2017 12:49:40 AM$"

#This program will take a users DNA sequence input and return the complementary DNA sequence.
#Program accomplished task without use of Bio.seq imports (Biopython).

#imports:

import re
import os
import sys

#Functions:

def getuserinput(userInput):
    #Function to gather user DNA sequence.
    print ("Welcome to the getuserinput function!")
    print ("This function will take user DNA sequence input and return it.")
    #Ensure user input is only a upper or lower case nucleotides.
    if re.search("[^atgcATGC]", userInput):
        print ("Sorry, that is not a valid DNA sequence.")
        sys.exit()
    #Print user DNA sequence string.
    print("Here is the DNA sequence you entered:")
    print(userInput)
    #Return user DNA sequence.
    return userInput

def touppercase(userDNAinput):
    #Function to make any lowercase nucleotides uppercase.
    #Print uppercase user DNA sequence string.
    print("Here is the upper case user DNA sequence:")
    print (userDNAinput.upper())
    #Return the uppercase DNA sequence.
    return userDNAinput.upper()

def reverse(userDNAinput):
    #Function to reverse the user DNA sequence input.
    #Split the user DNA sequence at each nucleotide and store as a list.
    userDNAinput.split()
    #Reverse the user DNA sequence list.
    reverseDNA = userDNAinput[::-1]
    #Print user DNA sequence list.
    print ("Here is the reversed user DNA sequence.")
    print(reverseDNA)
    #Return the reversed DNA sequence.
    return reverseDNA

def complement(userDNAinput):
    #Function to provide complementary DNA sequence to original DNA sequence input.
    #Create dictionary of DNA nucleotides.
    new_DNA_dictionary = {'A':'T', 'T':'A', 'G':'C', 'C':'G'}
    #Use dictionary to create complementary DNA sequence.
    print("Here is the complementary user DNA sequence:")
    output1 = (''.join([new_DNA_dictionary[usernucleotide] for usernucleotide in userDNAinput]))
    print (output1)
    return output1
    
    
def main(userinput):
    print ("Welcome to Matt's DNA sequence reader.")
    
    #Gather user DNA sequence input.
    UserDNAseq = getuserinput(userinput)
    
    #Check uppercase or lower case nucleotides.
    upperDNAseq = touppercase(UserDNAseq)
    
    #Reverse list of DNA nucleotides.
    reverseDNAseq = reverse(upperDNAseq)
    
    #Compute complementary DNA sequence.
    finalseq = complement(reverseDNAseq)
    
    return finalseq
    
    print ("Thanks for using Matt's DNA sequence reader!")
    
    #Exit the program.
    sys.exit()
    
if __name__ == "__main__":
    main()
