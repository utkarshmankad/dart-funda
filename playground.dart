import 'dart:io';

void main() {
  var firstName = 'Utkarsh';
  String lastName = 'Mankad';

  print(firstName + ' ' + lastName);

  stdout.writeln('Whats is your name ?');
  String name = stdin.readLineSync();
  stdout.writeln('My name is $name');

  // data types
  /*
 int
 double
 String
 bool
 dynamic
 */

  dynamic weak = 100;
  print(weak);
  weak = 'hundred';
  print(weak);

// String type conversion, constant, null
  var age = 30;
  print('My age $age');
  var multiline = '''
1
2
3
''';
  print(multiline);

  // Type Conversion
  
  // string to int
  var one = int.parse('1');
  assert(one == 1);
  // int to string
  String o = 1.toString();
  assert(o == '1');
  // string to double
  var oneone = double.parse('1.1');
  assert(oneone == 1.1);
  // double to string
  String d = 3.14159.toStringAsFixed(2);
  assert(d == 3.14);

  // Constant variables
  const num = 10;
  const text = 'hello';
  const val = 3.14159;

  print(num.runtimeType);
  print(text);
  print(val);

  
  //Null Aware operator
  // (?.),(??),(??=)

}
