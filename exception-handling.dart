int mustBeGreaterThanZero(int val) {
  if(val <= 0){
    throw Exception('Value must be greater than zero');
  }
  return val;
}

void verifyValue(var val) {
  var valueVerify;
  
  try {
    valueVerify = mustBeGreaterThanZero(val);
  } catch(e) {
    print(e);
  } finally {
    if(valueVerify == null) {
      print('Value not accepted');
    } else {
      print('Value is verified $valueVerify');
    }
  }
}

void main() {
  verifyValue(-10);
}