import 'dart:io';
import 'dart:math';

void main() {
    stdout.write('Regular Deposite Rupees : ');
    double principalAmount = double.parse(stdin.readLineSync());

    stdout.write('Expected Rate of Return(%p.a.)) : ');
    double rate = double.parse(stdin.readLineSync());

    stdout.write('Investment Period (In month): ');
    double time = double.parse(stdin.readLineSync());

    double i = rate/1200;

    double Total_Invested_Amount = principalAmount * time;
    stdout.write('Total Invested Amount : ');
    print(Total_Invested_Amount);

    double Maturity_Amount = principalAmount*(pow((1+i),time)-1)*(1+i)/i;
    stdout.write('Total Returns : ');
    print(Maturity_Amount - Total_Invested_Amount);

    stdout.write('Maturity Amount : ');
    print(Maturity_Amount);

}