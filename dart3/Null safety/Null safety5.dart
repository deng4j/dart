class Person {
  late int a;
}

void main(List<String> args) {
  Person? a;

  //类型断言: 如果str不等于null 会打印str，如果等于null会抛出异常
  print(a!);
}
