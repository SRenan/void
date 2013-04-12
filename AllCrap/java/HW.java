import java.util.StringTokenizer;

public class HW{
	
	
	public static void main(String[] args){
		String txt = new String("Un Two Trois Four Cinq Six Seven Eight Neun Zehn Eleven");
		System.out.println("Hello World !");
		System.out.println(txt+" : "+txt.length());
		
		
		StringTokenizer st = new StringTokenizer(txt, " ");
		while (st.hasMoreTokens()) {
			System.out.print(st.nextToken()+" "+st.nextToken()+" ");
		} 
	}
}