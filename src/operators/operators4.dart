void main(List<String> args) {
  var a;
  var b = a ?? 10; // 如果a不为null，返回啊，否则返回b

  print(a);
  print(b);
}