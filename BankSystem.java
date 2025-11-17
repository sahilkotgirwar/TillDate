import java.io.*;
import java.util.*;

class Account {
    int accNo;
    String name;
    char type;
    int balance;

    public void createAccount(Scanner sc) {
        System.out.print("Enter Account Number: ");
        accNo = sc.nextInt();
        sc.nextLine();

        System.out.print("Enter Account Holder Name: ");
        name = sc.nextLine();

        System.out.print("Enter Account Type (S/C): ");
        type = Character.toUpperCase(sc.next().charAt(0));

        System.out.print("Enter Initial Deposit: ");
        balance = sc.nextInt();

        System.out.println("Account Created Successfully!");
    }

    public void showAccount() {
        System.out.println("\nAccount No.: " + accNo);
        System.out.println("Name       : " + name);
        System.out.println("Type       : " + type);
        System.out.println("Balance    : " + balance);
    }

    public void report() {
        System.out.printf("%-10d %-15s %-5c %-10d\n",
                accNo, name, type, balance);
    }

    public String toFileString() {
        return accNo + "|" + name + "|" + type + "|" + balance;
    }

    public static Account fromFileString(String line) {
        String[] p = line.split("\\|");
        Account a = new Account();
        a.accNo = Integer.parseInt(p[0]);
        a.name = p[1];
        a.type = p[2].charAt(0);
        a.balance = Integer.parseInt(p[3]);
        return a;
    }
}


public class BankSystem {

    private static final String FILE_NAME = "accounts.txt";

    public static ArrayList<Account> loadAccounts() {
        ArrayList<Account> list = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new FileReader(FILE_NAME))) {
            String line;

            while ((line = br.readLine()) != null) {
                if (!line.trim().isEmpty())
                    list.add(Account.fromFileString(line));
            }
        } catch (Exception ignored) {}

        return list;
    }

    public static void saveAccounts(ArrayList<Account> accounts) {
        try (PrintWriter pw = new PrintWriter(new FileWriter(FILE_NAME))) {
            for (Account a : accounts) {
                pw.println(a.toFileString());
            }
        } catch (Exception e) {
            System.out.println("Error writing to file!");
        }
    }

    public static Account findAccount(ArrayList<Account> accounts, int accNo) {
        for (Account a : accounts)
            if (a.accNo == accNo)
                return a;
        return null;
    }


    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        ArrayList<Account> accounts;
        int choice;

        do {
            accounts = loadAccounts();

            System.out.println("\n\n\tMAIN MENU");
            System.out.println("1. NEW ACCOUNT");
            System.out.println("2. DEPOSIT AMOUNT");
            System.out.println("3. WITHDRAW AMOUNT");
            System.out.println("4. BALANCE ENQUIRY");
            System.out.println("5. ALL ACCOUNT HOLDER LIST");
            System.out.println("6. CLOSE ACCOUNT");
            System.out.println("7. EXIT");
            System.out.print("Select Your Option (1-7): ");

            choice = sc.nextInt();

            switch (choice) {

                case 1:
                    Account newAcc = new Account();
                    newAcc.createAccount(sc);
                    accounts.add(newAcc);
                    saveAccounts(accounts);
                    break;

                case 2:
                    System.out.print("Enter Account Number: ");
                    int dAcc = sc.nextInt();
                    Account accD = findAccount(accounts, dAcc);

                    if (accD != null) {
                        System.out.print("Enter Deposit Amount: ");
                        int amt = sc.nextInt();
                        accD.balance += amt;
                        saveAccounts(accounts);
                        System.out.println("Amount Deposited!");
                    } else {
                        System.out.println("Account Not Found!");
                    }
                    break;

                case 3:
                    System.out.print("Enter Account Number: ");
                    int wAcc = sc.nextInt();
                    Account accW = findAccount(accounts, wAcc);

                    if (accW != null) {
                        System.out.print("Enter Withdraw Amount: ");
                        int amt = sc.nextInt();

                        int bal = accW.balance - amt;
                        if ((bal < 500 && accW.type == 'S') ||
                            (bal < 1000 && accW.type == 'C')) {
                            System.out.println("Insufficient Balance!");
                        } else {
                            accW.balance -= amt;
                            saveAccounts(accounts);
                            System.out.println("Amount Withdrawn!");
                        }
                    } else {
                        System.out.println("Account Not Found!");
                    }
                    break;

                case 4:
                    System.out.print("Enter Account Number: ");
                    int sAcc = sc.nextInt();
                    Account accS = findAccount(accounts, sAcc);

                    if (accS != null)
                        accS.showAccount();
                    else
                        System.out.println("Account Not Found!");
                    break;

                case 5:
                    System.out.println("\nACCOUNT HOLDER LIST:");
                    System.out.printf("%-10s %-15s %-5s %-10s\n",
                            "A/c No", "Name", "Type", "Balance");
                    System.out.println("-----------------------------------------------");

                    for (Account a : accounts)
                        a.report();
                    break;

                case 6:
                    System.out.print("Enter Account Number to Delete: ");
                    int delAcc = sc.nextInt();
                    Account accDel = findAccount(accounts, delAcc);

                    if (accDel != null) {
                        accounts.remove(accDel);
                        saveAccounts(accounts);
                        System.out.println("Account Deleted!");
                    } else {
                        System.out.println("Account Not Found!");
                    }
                    break;

                case 7:
                    System.out.println("Thanks for using Bank Management System!");
                    break;

                default:
                    System.out.println("Invalid Choice!");
            }

        } while (choice != 7);

        sc.close();
    }
}
