package test;
// Use buffered input.
// This program uses try-with-resources. It requires JDK 7 or later.
import java.io.*;
class Test1 {
	public static void main(String args[]) {
		String s = "I am studying in rvce. rvce is a good college. Let's see if rvce works.\n";
		
		byte buf[] = s.getBytes();
		ByteArrayInputStream in = new ByteArrayInputStream(buf);
		int c;
		boolean marked = false;
		int count=0;
		// Use try-with-resources to manage the file.
		try ( BufferedInputStream f = new BufferedInputStream(in) )
		{
			while ((c = f.read()) != -1) {
				switch(c) {
				case 'r':
					f.mark(32);
					marked=true;
					if(count==0)
						count++;
					else {
						System.out.print((char)c);
					}
					break;

				case 'v':
					if(count==1) {
						count++;
					}
					else {
						System.out.print((char)c);
					}
					break;

				case 'c':
					if(count==2) {
						count++;
					}
					else {
						System.out.print((char)c);
					}
					break;

				case 'e':
					if(count==3) {
						System.out.print("R.V. College of Engineering");
						count=0;
						marked=false;
					}
					else {
						System.out.print((char)c);
					}
					break;

				default:
					if (!marked)
						System.out.print((char) c);
					else if(count>0) {
						System.out.print("r");
						f.reset();
						marked=false;
						count=0;
					}
					break;
				}
			}
		} catch(IOException e) {
			System.out.println("I/O Error: " + e);
		}
	}
}
