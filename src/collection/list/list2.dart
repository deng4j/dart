void main(List<String> args) {
  // growable为false表示列表长度可变
  List<String> list = List.empty(growable: true); // 创建list方式2
  list.add('1');
  list.add('2');
  print(list);
}