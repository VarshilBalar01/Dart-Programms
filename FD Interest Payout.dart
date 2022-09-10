import 'dart:io';
import 'dart:math';

void main() {
    stdout.write('Deposite Amount Rupees:');
    double principalAmount = double.parse(stdin.readLineSync());

    stdout.write('Annual Interest Rate:');
    double interest = double.parse(stdin.readLineSync());

    stdout.write('Term:');
    double term = double.parse(stdin.readLineSync());

    double fd_interest_payout = principalAmount*interest*term/100;

    stdout.write('Deposite Amount: ');
    print(principalAmount);

    stdout.write('Total Interest: ');
    print(fd_interest_payout);

    stdout.write('Maturity Amount: ');
    print(principalAmount + fd_interest_payout);

}