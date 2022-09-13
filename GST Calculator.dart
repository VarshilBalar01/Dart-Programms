import 'dart:io';

void main() {

    stdout.write('Amount : ');
    double Amount = double.parse(stdin.readLineSync());
    print('Select Rate of GST : ');
    print('Enter 1. for 5%');
    print('Enter 2. for 10%');
    print('Enter 3. for 18%');
    print('Enter 4. for 28%');
    print('Enter 5. for other');
    stdout.write('Choice : ');
    int choice = int.parse(stdin.readLineSync());
    double rate = 0;

    if(choice == 1) {
        rate = 5;
    } else if(choice == 2) {
        rate = 12;
    } else if(choice == 3) {
        rate = 18;
    } else if(choice == 4) {
        rate = 28;
    } else if(choice == 5) {
        stdout.write();
        rate = double.parse(stdin.readLineSync());
    } else {
        print('Wrong Choice!!');
    }

    stdout.write('Original Cost : ');
    print(Amount);

    double GST = Amount*rate/100;
    stdout.write('GST Price : ');
    print(GST);

    stdout.write('Net Price : ');
    print(Amount + GST);
}