package portfolio;

import java.util.ArrayList;

public class ckvo {
	ArrayList<String> al =null;
	
	public ckvo(String[] a){
		ArrayList<String> al = new ArrayList<String>();
		for(int i=0;i<a.length;i++) {
			al.add(a[i]);
		}
		
		this.al = al;
}
}
