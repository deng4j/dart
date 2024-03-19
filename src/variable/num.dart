/**
 * num 是数字类型的父类，有两个子类 int 和 double
 * 
 * int 根据平台的不同，整数值不大于64位。在Dart VM上，值可以从-263到263 - 1，编译成JavaScript的Dart使用JavaScript代码，允许值从-253到253 - 1
 * 
 * double 64位（双精度）浮点数，如IEEE 754标准所规定
 */
void main(){
  int a=1;
  print(a);

  double b = 1.12;
  print(b);

  // String -> int
  int one = int.parse('1');
  print(one + 2);

  // String -> double
  var onePointOne = double.parse('1.1');
  print(onePointOne + 2);

  // int -> String
  String oneAsString = 1.toString();
  // The argument type 'int' can't be assigned to the parameter type 'String'
  //print(oneAsString + 2);
  print('$oneAsString + 2');

  // double -> String 注意括号中要有小数点位数，否则报错
  String piAsString = 3.14159.toStringAsFixed(2);
  // 截取两位小数, 输出3.14
  print(piAsString);
}