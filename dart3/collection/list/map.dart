void main() {
  List myList1 = [1, 3, 4];
  var newList1 = myList1.map((value) {
    return value * 2;
  });
  print(newList1.toList());

  print('---------------------------------');

  List<String> list = ['a', 'b', 'c', 'd'];

  print(list.asMap()); // {0: a, 1: b, 2: c, 3: d}
  print(list.asMap().keys); // (0, 1, 2, 3)
  print(list.asMap().keys.map((index) => list[index]).toList()); // [a, b, c, d]
}
