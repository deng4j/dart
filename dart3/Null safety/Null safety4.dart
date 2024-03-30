void main(List<String> args) {
  // ! 类型断言
  String? str = "this is str";

  str = null;

  //类型断言: 如果str不等于null 会打印str的长度，如果等于null会抛出异常
  print(str!.length);
}
