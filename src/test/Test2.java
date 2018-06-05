package test;

import java.util.regex.*;

class Test2 {
	public static void main(String args[]) {
		String email="ckarthik114@gmail.com";
		
		Pattern pattern=Pattern.compile("[@.]");
		
		String a[]=pattern.split(email);
		
		for (String string : a) {
			System.out.println(string);
		}
		

	}
}
