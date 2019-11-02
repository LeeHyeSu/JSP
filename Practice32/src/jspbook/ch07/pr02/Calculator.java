package jspbook.ch07.pr02;

public class Calculator {
	private int op1;
	private int op2;
	private String operator;
	
	public int getOp1() {
		return op1;
	}
	
	public void setOp1(int op1) {
		this.op1 = op1;
	}
	
	public int getOp2() {
		return op2;
	}
	
	public void setOp2(int op2) {
		this.op2 = op2;
	}
	
	public String getOperator() {
		return operator;
	}
	
	public void setOperator(String operator) {
		this.operator = operator;
	}
	
	public int calc(int a, int b, String op) {
		if (op.equals("+")) {
			return add(a, b);
		}
		else if (op.equals("-")) {
			return sub(a, b);
		}
		else if (op.equals("*")) {
			return mult(a, b);
		}
		else {
			return div(a, b);
		}
	}
	
	private int add(int a, int b) {
		return a+b;
	}
	
	private int sub(int a, int b) {
		return a-b;
	}
	
	private int mult(int a, int b) {
		return a*b;
	}
	
	private int div(int a, int b) {
		return a/b;
	}
	
}
