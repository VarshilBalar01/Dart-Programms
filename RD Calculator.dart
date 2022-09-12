import 'dart:io';
import 'dart:math';

void main() {
    stdout.write('Monthly Deposite Rupees:');
    double principalAmount = double.parse(stdin.readLineSync());

    stdout.write('Annual Interest Rate:');
    double interest = double.parse(stdin.readLineSync());

    stdout.write('Term (In Month):');
    double time = double.parse(stdin.readLineSync());

    double Total_Deposite_Amount = time * principalAmount;
    stdout.write('Total Deposite Amount : ');
    print(Total_Deposite_Amount);

    double RD_Interest = principalAmount*(time*(time+1))*interest/(2400);
    RD_Interest = RD_Interest.round();
    stdout.write('Interest : ');
    print(RD_Interest);

    stdout.write('Maturity Amount : ');
    print(Total_Deposite_Amount + RD_Interest);

    stdout.write('Absolute Return(%) : ');
    print((RD_Interest/Total_Deposite_Amount)*100);
}