import 'dart:io';
import 'dart:math';
void main() {
    stdout.write('Principal Amount (for Loan1): ');
    double principalAmount1 = double.parse(stdin.readLineSync());
    stdout.write('\nPrincipal Amount (for Loan2): ');
    double principalAmount2 = double.parse(stdin.readLineSync());

    stdout.write('Interest Percentage (for Loan1): ');
    double interest1 = double.parse(stdin.readLineSync());
    interest1 /= 1200;
    stdout.write('Interest Percentage (for Loan2): ');
    double interest2 = double.parse(stdin.readLineSync());
    interest2 /= 1200;

    stdout.write('Load Tenure (for Loan1): ');
    double time1 = double.parse(stdin.readLineSync());
    stdout.write('Load Tenure (for Loan2): ');
    double time2 = double.parse(stdin.readLineSync());

    double mediate1 = pow((1+interest1),time1*12);
    double EMI1 = principalAmount1*interest1*mediate1/(mediate1-1);
    double mediate2 = pow((1+interest2),time2*12);
    double EMI2 = principalAmount2*interest2*mediate2/(mediate2-1);

    print('No.                                            Loan1                  Loan2');
    stdout.write('EMI (Monthly Payment) :                ');
    print('${EMI1}   |   ${EMI2}');

    stdout.write('Total Interest Payable :                ');
    print('${(EMI1*12*time1)-principalAmount1}   |   ${(EMI2*12*time2)-principalAmount2}');

    stdout.write('Total Payment (Principal + Interest) : ');
    print('${EMI1*12*time1}   |   ${EMI2*12*time2}');

}