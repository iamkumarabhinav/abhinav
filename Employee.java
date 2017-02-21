import java.util.Date;


public abstract class Employee extends Person{
	private String desg;
	private String dept;
	private double sal;
	
	public Employee(int x) {
		super(x);
	}
	public Employee(String nm,int a,String bd,String no,String desg, String dept, double sal) {
		super(nm,a,bd,no);
		this.desg = desg;
		this.dept = dept;
		this.sal = sal;
	}
	public String getDesg() {
		return desg;
	}
	public void setDesg(String desg) {
		this.desg = desg;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	abstract public double calculateSal();
	public String toString(){
		return super.toString()+"\nDesignation : " +desg +"Department : "
	                             +dept +"Salary : "+sal;
		
	}
	 

}
