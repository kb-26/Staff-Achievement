package com.fileNameHandler;

public class Main {
	String fileName=null;
	String shortened="";
	
	public Main(String fileName) {
		this.fileName=fileName;
	}
	
	public String convert() {
		String temp[]  = fileName.split(" ");
		
		for(int i=0;i<temp.length;i++)
		{
			shortened+=temp[i].charAt(0);
		}
		return shortened;
	}
}
