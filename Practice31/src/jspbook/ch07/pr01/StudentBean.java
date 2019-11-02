package jspbook.ch07.pr01;

public class StudentBean {

	private String sname;
	private long sid;
	private int age;
	private String major;
	private String address;
		
	public boolean isGrownUp() {
		if(age >= 20) {
			return true;
		}
		else {
			return false;
		}
	}
		
	public String getSname() {
		return sname;
	}
		
	public void setSname(String sname) {
		this.sname = sname;
	}
	
	public long getSid() {
		return sid;
	}
	
	public void setSid(long sid) {
		this.sid = sid;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
}
