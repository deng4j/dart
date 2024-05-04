/**
扩展方法，允许我们在不修改类本身的情况下为类、方法、库添加新的方法和功能。更简洁，更优雅的写法

              拓展名          返回类型
extension <extension name> on <type> {
  (<member definition>)*
}

注意：动态变量不支持，因为 extension 方法必须针对接收器的静态类型解析，所以动态方法不起作用。

 */

void main() {
  String name = "shirsh";
  print(capitalizeFirstLetter(name)); //Shirsh

  print(name.capitalizeFirstLetter()); //Shirsh

  print(1.getPlus());
}

// 普通方法
String capitalizeFirstLetter(String name) {
  return '${name[0].toUpperCase()}${name.substring(1)}';
}

// 简写方法
extension CapitalizeData on String {
  String capitalizeFirstLetter() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

// 简写方法
extension Plus on int {
  int getPlus() {
    return this+1;
  }
}