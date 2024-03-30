void main(List<String> args) {
  List myList4 = [1, 3, 4, 5, 7, 8, 9];
  var f4 = myList4.every((value) {
    //每一个都满足条件返回true  否则返回false
    return value > 5;
  });
  print(f4);
}
