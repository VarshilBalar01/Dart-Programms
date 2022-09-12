import 'dart:io';
import 'dart:math';

void main() {

    stdout.write('Target Value Desired(Rs.) : ');
    double Target_Value = double.parse(stdin.readLineSync());

    stdout.write('Monthly Investment(Rs.): ');
    double principalAmount = double.parse(stdin.readLineSync());

    stdout.write('Expected Rate of Return(%p.a.)) : ');
    double rate = double.parse(stdin.readLineSync());

    double i = rate/1200;

    double time = log(((Target_Value*i)/(principalAmount*(1+i)))+1)/(log(1+i));
    time = time.round();
    print('${time} Months');

    double Total_Invested_Amount = principalAmount * time;
    stdout.write('Total Invested Amount : ');
    print(Total_Invested_Amount);

    stdout.write('Maturity Amount : ');
    print(Target_Value);

    double Maturity_Amount = principalAmount*(pow((1+i),time)-1)*(1+i)/i;
    stdout.write('Total Returns : ');
    print(Target_Value - Total_Invested_Amount);

}