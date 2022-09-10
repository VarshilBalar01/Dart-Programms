import 'dart:io';
import 'dart:math';
void main() {
  stdout.write('Principal Amount:');
  double principalAmount = double.parse(stdin.readLineSync());
  
  stdout.write('Interest Percentage:');
  double interest = double.parse(stdin.readLineSync());
  interest /= 1200;
  
  stdout.write('Load Tenure:');
  double time = double.parse(stdin.readLineSync());
  
  double mediate = pow((1+interest),time*12);
  double EMI = principalAmount*interest*mediate/(mediate-1);
  
  stdout.write('EMI (Monthly Payment) : ');
  print(EMI);
  
  stdout.write('EMI (Yearly Payment) : ');
  print(EMI*12);
  
  stdout.write('Total Interest Payable : ');
  print((EMI*12*time)-principalAmount);
  
  stdout.write('Principal + Interest : ');
  print(EMI*12*time);
}