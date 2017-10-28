/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bioinfocompbp;


import java.io.*;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.util.Scanner;


/**
 *
 * @author Matt's 2 in 1
 */
public class Bioinfocompbp 
{

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        System.out.println("Welcome to Matt's DNA sequence reader.");
        System.out.println();
        System.out.println("You are now being routed to the DNA sequence input function.");
        System.out.println();
        
        //Create an instance of a DNAseq object.
        DNAseq UserDNA = new DNAseq();
        
        try
        {
            UserDNA.userseqinput(UserDNA);
        }
        catch(IOException error)
        {
            System.out.println("There was an error reading your DNA sequence.");
            return;
        }
        
        //Output users DNA sequence.
        System.out.println("Here is your DNA sequence after collecting user input:");
        UserDNA.IOstringshow();
        
        //Call function to check and turn users DNA sequence into uppercase letters.
        System.out.println("Calling uppercasecheck function:");
        System.out.println();
        UserDNA.uppercasecheck(UserDNA);
        
        //Output users DNA sequence.
        System.out.println("Here is your DNA sequence after running uppercasecheck function:");
        UserDNA.IOstringshow();
       
        //Call function to reverse users DNA sequence.
        System.out.println("Calling reverse function:");
        System.out.println();
        UserDNA.reverse(UserDNA);
        
        //Output users DNA sequence.
        System.out.println("Here is your DNA sequence after running reverse function:");
        UserDNA.IOstringshow();
        
        //Call function to provide complement of users DNA sequence.
        System.out.println("Calling complement function:");
        System.out.println();
        UserDNA.complement(UserDNA,UserDNA.userDNA.length());
         
        //Output users DNA sequence.
        System.out.println("Here is your DNA sequence after running complement function:");
        UserDNA.IOstringshow();
       
        System.out.println("Thanks for using Matt's DNA sequence reader!");  
    }
     
}

class DNAseq
{
    //DNAseq definition.
    String userDNA = new String();
    
    DNAseq()
    {
        //Constructor
        System.out.println("Welcome to DNA sequencer!");
        System.out.println();
    }
    
    //Function to check if the users string has uppercase letters.
    //If they are not, make them uppercase.
    void uppercasecheck(DNAseq inputDNAseq)
    {
        //Check for lowercase letters.
        //If found to be lowercase, make them uppercase letters.
    
        //Lowercase pattern to check for.
        Pattern pattern = Pattern.compile("[atgc]");
        Matcher matcher = pattern.matcher(inputDNAseq.userDNA);
        
        if(matcher.find())
        {
            inputDNAseq.userDNA = inputDNAseq.userDNA.toUpperCase();
        }
    }
    
    //A function to return String object in reverse order.
    void reverse(DNAseq inputDNAseq)
    {
        StringBuilder DNAreverse = new StringBuilder(inputDNAseq.userDNA).reverse();
        inputDNAseq.userDNA = DNAreverse.toString();
    }
    
    //A function to return String objects complementary DNA sequence.
    void complement(DNAseq inputDNAseq , int DNAseqlength)
    {
        //StringBuffer object to hold complementary DNA sequence.
        char[] complementDNAchararray = new char[DNAseqlength];
        
        //Call StringBuffer function on input DNA sequence.
        char[] usercompareDNAseq = inputDNAseq.userDNA.toCharArray();
        
        for(int i = 0 ; i < DNAseqlength ; i++)
        {
            if(usercompareDNAseq[i] == 'A')
            {
                complementDNAchararray[i] = 'T'; 
            }
            else if(usercompareDNAseq[i] == 'T')
            {
                complementDNAchararray[i] = 'A'; 
            }
            else if(usercompareDNAseq[i] == 'G')
            {
               complementDNAchararray[i] = 'C'; 
            }
            else if(usercompareDNAseq[i] == 'C')
            {
               complementDNAchararray[i] = 'G'; 
            }
        }
        inputDNAseq.userDNA = String.valueOf(complementDNAchararray);
    }
    
    //A function to show the users DNA sequence.
    void IOstringshow()
    {
        System.out.println(userDNA);
        System.out.println();
    }
    
    //This function will take a user's DNA as a String object.
    void userseqinput(DNAseq inputDNAseq) throws IOException
    {
        System.out.println("You are now in the userseqinput function.");
        System.out.println();
        
        //Creating a buffered read by utilizing System.in:
        Scanner userDNAseq = new Scanner(System.in);
        
        
        System.out.println("Please enter DNA sequence.");
        System.out.println();
        
       
        inputDNAseq.userDNA = userDNAseq.nextLine();
        
        //Pattern.
        Pattern pattern = Pattern.compile("[^atgcATGC]");
        Matcher matcher = pattern.matcher(inputDNAseq.userDNA);
        
        if(matcher.find())
        {
            System.out.println();
            System.out.println("Sorry, that is not a valid DNA sequence.");
            System.exit(0);
        }

        System.out.println();
    }
}
