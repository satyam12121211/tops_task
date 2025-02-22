import 'dart:io';

select() {
  int? price;
  int small = 250;
  int medium = 350;
  int large = 500;
  int monster = 850;
  int? quntty;
  int? sml = 4;
  int? med = 3;
  int? lar = 2;
  int? mon = 1;
  int of;

  print(
      "YOUR MENU\n1.SMALL(250)\n2.MEDIUM(350)\n3.LARGE(500)\n4.MONSTER(850)\nCHOOSE YOUR NUMBER");
  int number = int.parse(stdin.readLineSync()!);
  switch (number) {
    case 1:
      print('you select a small pizza');
      print('select prices');
      quntty = int.parse(stdin.readLineSync()!);
      if (quntty <= 3) {
        price = small * quntty;
        print("bill = $price");
        return price;
      } else {
        of = quntty ~/ sml;
        price = small * quntty;
        print("bill = ${price} and you get ${of * 500}ml. coke free");
        return price;
      }
    case 2:
      print('you select a medium pizza');
      print('select pices');
      quntty = int.parse(stdin.readLineSync()!);
      if (quntty <= 2) {
        price = medium * quntty;
        print("bill = $price");
        return price;
      } else {
        of = quntty ~/ med;
        price = medium * quntty;
        print("bill = ${price} and you get ${of * 1}ltr. coke free");
        return price;
      }

    case 3:
      print('you select a large pizza');
      print('select pices');
      quntty = int.parse(stdin.readLineSync()!);
      if (quntty <= 1) {
        price = large * quntty;
        print("bill = ${price}");
        return price;
      } else {
        of = quntty ~/ lar;
        price = large * quntty;
        print(
            "bill = ${price} and you get ${of * 500}ml. coke and ${of * 1} ice cream free");
        return price;
      }
    case 4:
      print('you select a monster pizza');
      print('select pices');
      quntty = int.parse(stdin.readLineSync()!);
      of = quntty ~/ mon;
      price = monster * quntty;
      print(
          "bill = ${price} and you get ${of * 1}ltr. coke and ${of * 1} ice cream free");
      return price;
    default:
      print(
          'sir in menu only 4 category pizza avilable you can rewhach and select a pizza thank for i can help you sir');
      select();
  }
}

// kill(int og){
//   print("want to purchase more ?? \n"
//       " if yes press 1 \n"
//       "if no press 0");
//   int send = int.parse(stdin.readLineSync()!);
//   if(send==1){
//     int sp =select();
//     int total = sp+og;
//     print("your total bill = $total \n"
//         "thanks for visit ");
//     return kill(total);
//   }
//   else if (send == 0){
//     print("thanks for visit \n"
//         "your total bill = $og");
//   }
//   else{
//     print("invalid input");
//     return kill(og);
//   }
// }
void main() {
  print('welcometo pizza shop');
  int? og = select();
  bool b = true;
  int send;
  int fog = 0;
  int tl = 0;
  int c = 0;
// kill(og!);

  while (b) {
    print("want to purchase more ?? \n"
        " if yes press 1 \n"
        "if no press 0");
    send = int.parse(stdin.readLineSync()!);
    if (send == 1) {
      fog = select();
      fog = tl + og!;
    } else if (send == 0) {
      b = false;
    } else {
      print('invalid input');
    }
    c = fog + og!;
  }
  print('your total bill$c}');
}
