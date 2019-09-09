void main () {
  // List
  List <String> names = const ['a','b','c'];
  names.forEach((n) => print(n));
  print(names.length);
  print(names[2]);
  // names[1] = 'd';
  // const makes all values constant in list
  // cloning list
  var names2 = [...names];
  for(var n in names2) {
    print(n);
  }
  // names.removeAt(2);
  
  // Set - no duplicates
  Set <String> halogen = {'Fl','Cl','Br'};
  for (var f in halogen) {
    print(f);
  }
  print(halogen.length);
  print(halogen.add('F'));
  halogen.remove('F');
  print(halogen.elementAt(2));
  
  // Map
  var dates = Map();
  Map <String,String> gifts = {
    // key      // values
    'first':  'cake',
    'second': 'toys',
    'third': 'roses'
  };
  print(gifts);
  print(gifts.length);
  print(gifts.values);
  print(gifts.keys);
  print(gifts['first']);
  gifts.remove('second');
}