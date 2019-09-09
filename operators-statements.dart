class Num {
  int num;
  Num(int n){
    num = n;
  }
}

main () {

  //Operators
  int v = 10 + 20;
  v = v - 2;
  print(v);
  v = v%5;
  print(v);
  if(v == 0){
    print('Zero');
  }
  v = 100;
  v *= 2; print(v);
  v += 2; print(v);
  v -= 2; print(v);
  v++; print(v);
  v--; print(v);
  if(v >= 200 && v <= 203){
    print('Between 200 and 203');
  }
  if( v != 100){
    print('Not equal to 100');
  }

  // Null aware operators
  var n = Num(null);
  int number;
  int new_num;
  // Null aware
  // n? - to assign null if n is null
  // n?. ?? - to assign default value if n is null
  number = n?.num ?? 100;
  print(number);
  // ??= - conditional assignment of number
  print(new_num ??= 200);
  //Ternary operator ? :
  int x = 100;
  print(x % 2 == 0 ? 'Even' : 'Odd');
  // Test operator
  double d = 100.00;
  if(d is double){
    print("'d' is double");
  }

  //Conditional statements
  int num = 101;
  if(num == 100){
    print(num);
  } else if(num % 10 == 0) {
    print('number ends with 0');
  } else {
    print('Its just a number');
  }

  // Switch statement
  int data = -1;
  switch(data%10) {
    case 0:
      print('Even');
      break;
    case 1:
      print('Odd');
      break;
    default:
      print('no idea');
  }

  //Loops
  //standard for
  for(var v = 0; v < 10; v++){
    print(v);
  }
  //for-in
  var nums = [1,2,3,4,5,6,7,8,9,10];
  for(var n in nums){
    print(n%5);
  }
  // for-each
  var arr = [1,2,3];
  arr.forEach((n) => print(n));
  // while
  int i = 5;
  while ( i > 0) {
    print(i); i--;
  }
  // do-while
  int j = 5;
  do {
    print(j);
    j--;
  }while (j > 0);
}