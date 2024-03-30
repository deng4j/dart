void main(List<String> args) {
  List myList2 = [1, 3, 4, 5, 7, 8, 9];
  var newList2 = myList2.where((value) {
    return value > 5;
  });
  print(newList2.toList());
}
