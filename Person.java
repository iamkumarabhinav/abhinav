import java.util.Date;
import java.io.*;
abstract public class Person implements Serializable {
	static int count;
	private int perId;
	private String perName;
	private int age;
	private String bDate;
	private String mobNo;
	
	public Person(int x){
		count=x;
		perId=count;
		perName=null;
		age=0;
		bDate=null;
		mobNo=null;
	}
	
	public Person(String nm,int a,String bd,String no){
		count++;
		this.perId=count;
		perName=nm;
		age=a;
		bDate=bd;
		mobNo=no;
	}
	
	public void setPerId(int id){
		 perId=id;
	}
	
	public int getPerId(){
		return perId;
		
	}
	
	public String getPerName() {
		return perName;
	}

	public void setPerName(String perName) {
		this.perName = perName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getbDate() {
		return bDate;
	}

	public void setbDate(String bDate) {
		this.bDate = bDate;
	}

	public String getMobNo() {
		return mobNo;
	}

	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}
	public String toString(){
		return "Id : " +perId+ "\nName : "+perName
				+"\nAge :"+age +"\nB'Date" +bDate
				       +"\nMobile : "+mobNo;
	}
   
	public void display(){
		System.out.println("Id : "+this.perId);
		System.out.println("Name : "+perName);
		System.out.println("Age : "+age);
		System.out.println("B'Date : "+bDate);
		System.out.println("Mobile No : "+mobNo);
	}
}