void main(List<String> args) {
  List myList3 = [1, 3, 4, 5, 7, 8, 9];
  var f3 = myList3.any((value) {
    //只要集合里面有满足条件的就返回true
    return value > 5;
  });
  print(f3);
}
