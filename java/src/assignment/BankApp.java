package assignment;

import java.util.*;

public class BankApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		BankDetails bd = new BankDetails();
		System.out.print("How many number of customers do you want to input? ");  
		int input = sc.nextInt();
		while(input-->0) {
			System.out.println("\nWELCOME TO DS BANK!!");
			System.out.println("\n1:open account \n2:withdraw money \n3: deposit money \n4: show account details \n5:exit");
			System.out.println("\nenter your choice: ");
			int ch = sc.nextInt();
			switch(ch) {
			case 1:
				bd.openAccount();
				break;
			case 2:
				bd.withdraw();
				break;
			case 3:
				bd.deposit();
				break;
			case 4:
				bd.showDetails();
				break;
			case 5:
				System.exit(5);
				
			}
			
				
				
			
			
		}
		
		

	}

}
class BankDetails {
	private int accountNo;
	private String accountName;
	private String accountType;
	private double balance;
	Scanner sc = new Scanner(System.in);
	
	//method to open account
	public void openAccount() {
		System.out.println("enter account number : ");
		accountNo = sc.nextInt();
		System.out.println("enter your name : ");
		accountName = sc.next();
		System.out.println("enter account type : ");
		accountType = sc.next();
		System.out.println("enter balance : ");
		balance = sc.nextDouble();
	}
	
	//method to show account details 
	public void showDetails() {
		System.out.println("account holder name : "+accountName);
		System.out.println("account number : "+accountNo);
		System.out.println("account type : "+accountType);
		System.out.println("balance : "+balance);
	}
	
	//method to deposit money
	public void deposit() {
		double amt;
		System.out.println("Enter the amount you want to deposit: ");  
		amt = sc.nextDouble();
		balance+=amt;
	}
	
	//method to withdraw money
	public void withdraw() {
		double amt;
		System.out.println("Enter the amount you want to withdraw: ");  
		amt = sc.nextDouble();
		if(balance>=amt) {
			balance-=amt;
			System.out.println("Balance after withdrawal: " + balance);  
			
		}
		else {
			System.out.println("Your balance is less than " + amt + "\tTransaction failed...!!" );  
		}
	}
	

}
