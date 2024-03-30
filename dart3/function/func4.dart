//方法，可作为参数
method1() {
  print("I am method one");
}

//参数为方法的函数
method2(f()) {
  f();
}

void main(List<String> args) {
  method2(method1);
}
