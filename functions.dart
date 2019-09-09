void main() {
  var list = ['apple','banana','orange'];
  // Annonymous functions
  list.forEach((item) {
    print(item);
  });
  showOutput(square(2));
  showOutput(cube(6));
  // using named parameter function
  // print(sum(num1:1, num2:4));
  print(sum(1, num2:4));
}

// Arrow function type
dynamic cube(var num) => num*num*num;

// dynamic return type
dynamic square(var num) {
  return num*num;
}

// No return type
void showOutput(var msg) {
  print(msg);
}

// Named parameter function - {var num1, var num2} when both variables are name params
// {} is for compulsary name param, [] for optional name param
dynamic sum(var num1, {var num2}) => num1 + (num2 ?? 0);