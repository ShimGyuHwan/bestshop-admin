package portfolio;

import java.util.ArrayList;

public class pagevo {
		int s,e;
		String info;
	public pagevo(int s,int e,String info) {
		this.s=s-1;
		this.e=e;
		this.info=info;
	}
	
	public ArrayList<String> ck(String[] a){
		ArrayList<String> al = new ArrayList<String>();
		for(int i=0;i<a.length;i++) {
			al.add(a[i]);
		}
		
		return al;
	}
}
