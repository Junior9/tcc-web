package unifesp.model;


public class No {
	private int x,y,id;
	
	No(int id,int x,int y){
		this.id = id;
		this.x = x;
		this.y = y;
	}
	
	public int getId(){return this.id;}
	public int getX(){return this.x;}
	public int getY(){return this.y;}
}
