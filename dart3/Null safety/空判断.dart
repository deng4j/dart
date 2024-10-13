void main(List<String> args) {
  var a;
  var b = a ?? 10; // 如果a不为null，返回啊，否则返回b
  var c;
  c ??=99; //如果c为空，给c设置成99

  print(a);
  print(b);
  print(c);
}