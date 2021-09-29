package FileOlvas;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

public class BTFileOlvas {

	public static void main(String[] args) throws IOException {
		
		Scanner sc= new Scanner(System.in);
		System.out.println("Adatok záma = ");
		int darab=sc.nextInt();
		File szoveg=new File("balla.txt");
		
		int sztomb[]= new int[darab];
		int n=0;
		
		    FileInputStream fstream = new FileInputStream("balla.txt");
		    BufferedReader br = new BufferedReader(new InputStreamReader(fstream));

		    String strLine;

		    //Read File Line By Line
		    while ((strLine = br.readLine()) != null)   {
		    	if(n>darab) {
		    		sztomb[n]=(int)Integer.parseInt(strLine);
		    	}
		    	
		    }

		    //Close the input stream
		    fstream.close();
		    
	
		    
		    
		    
		    
		    
		    
		    
		for (int i = 0; i < sztomb.length; i++) {
			System.out.println(i+"Szam"+sztomb[i]);
		
		}
		int sum=0; 
		for (int i = 0; i < sztomb.length; i++) {
			sum+=sztomb[i];
		}
		System.out.println("Az összeg = "+sum);
		
		}
		
		
		

		
	}


