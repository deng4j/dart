void main() {
  List myList1 = [1, 3, 4];
  var newList1 = myList1.map((value) {
    return value * 2;
  });
  print(newList1.toList());
}
