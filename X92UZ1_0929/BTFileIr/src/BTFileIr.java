import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class BTFileIr {

	public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException {
		
		int adtadb;
		File szoveg=new File("vezeteknev.txt");
		Scanner sc= new Scanner(System.in);
		System.out.println("Adatok száma = ");
		int adatdb=sc.nextInt();
		int sztomb[]= new int[adatdb];
		
		for (int i = 0; i < adatdb; i++) {
			System.out.println(i+".adat = ");
			sztomb[i]=sc.nextInt();
		}
		System.out.println("Adatok kiírása: vezeteknev.txt állományba");
		PrintWriter writer = new PrintWriter("balla.txt", "UTF-8");
		for (int i = 0; i < sztomb.length; i++) {
			writer.println(sztomb[i]);
		}
		
		writer.close();

	}

}
