package model;

public class porder {
	private int id;
	private String name;
	private int pro1;
	private int pro2;
	private int pro3;
	private int sum;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPro1() {
		return pro1;
	}
	public void setPro1(int pro1) {
		this.pro1 = pro1;
	}
	public int getPro2() {
		return pro2;
	}
	public void setPro2(int pro2) {
		this.pro2 = pro2;
	}
	public int getPro3() {
		return pro3;
	}
	public void setPro3(int pro3) {
		this.pro3 = pro3;
	}
	
	public int getSum() {
		sum = pro1*1000 + pro2*2000 +pro3*3000;
		return sum;
	}
	
	
}
