import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Deposite Amount Rupees:');
  double principalAmount = double.parse(stdin.readLineSync());

  stdout.write('Annual Interest Rate:');
  double interest = double.parse(stdin.readLineSync());

  stdout.write('Term (In Month):');
  double time = double.parse(stdin.readLineSync());
  double Maturity_Value =
      principalAmount * pow((1 + (interest / 100)), (time / 12));

  stdout.write('Deposite Amount: ');
  print(principalAmount);

  stdout.write('Total Interest: ');
  print(Maturity_Value - principalAmount);

  stdout.write('Maturity Amount: ');
  print(Maturity_Value);

  stdout.write('Absolute return(%): ');
  print(((Maturity_Value - principalAmount) * (100)) / (principalAmount));
}
