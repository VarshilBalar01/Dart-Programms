import 'dart:io';

void main() {

    stdout.write('Amount : ');
    double Amount = double.parse(stdin.readLineSync());
    print('Select Rate of VAT : ');
    print('Enter 1. for 1%');
    print('Enter 2. for 4%');
    print('Enter 3. for 5%');
    print('Enter 4. for 12.5%');
    print('Enter 5. for other');
    stdout.write('Choice : ');
    int choice = int.parse(stdin.readLineSync());
    double rate = 0;

    if(choice == 1) {
        rate = 1;
    } else if(choice == 2) {
        rate = 4;
    } else if(choice == 3) {
        rate = 5;
    } else if(choice == 4) {
        rate = 12.5;
    } else if(choice == 5) {
        stdout.write();
        rate = double.parse(stdin.readLineSync());
    } else {
        print('Wrong Choice!!');
    }

    stdout.write('Original Cost : ');
    print(Amount);

    double VAT = Amount*rate/100;
    stdout.write('VAT Price : ');
    print(VAT);

    stdout.write('Net Price : ');
    print(Amount + VAT);
}