import 'dart:io';
import 'dart:math';

void main() {

    stdout.write('Target Value Desired(Rs.) : ');
    double Target_Value = double.parse(stdin.readLineSync());

    stdout.write('Expected Rate of Return(%p.a.)) : ');
    double rate = double.parse(stdin.readLineSync());

    stdout.write('Investment Period (In month): ');
    double time = double.parse(stdin.readLineSync());

    double i = rate/1200;
    double mediate = (pow((1+i),time)-1)*(1+i)/i;
    double Monthly_Investment = Target_Value/mediate;
    Monthly_Investment = Monthly_Investment.round();

    stdout.write('Monthly Investment : ');
    print(Monthly_Investment);

    double Total_Invested_Amount = Monthly_Investment * time;
    stdout.write('Total Interest Amount : ');
    print(Total_Invested_Amount);

    stdout.write('Maturity Amount : ');
    print(Target_Value);

    stdout.write('Total Returns : ');
    print(Target_Value - Total_Invested_Amount);

}