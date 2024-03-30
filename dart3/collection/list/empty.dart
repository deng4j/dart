void main(List<String> args) {
  // growable为false表示列表长度可变
  List<String> list = List.empty(growable: true);
  list.add('1');
  list.add('2');
  print(list);
}