// 不可变的元组
void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');

  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$2);
}
