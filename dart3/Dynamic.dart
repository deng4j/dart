void main() {
  // 如果类型不确定，可以使用Object，但是，一旦确定是Object类型，就只能是Object类型了
  Object name = '张三';

  // dynamic表示类型可以变，缺点是不安全
  dynamic name2 = 'name';

  print(name.runtimeType);
  print(name2.runtimeType);

  // print(name.length); // 不可用
  print(name2.length);
}
