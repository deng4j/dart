/**
 * Dart里面的String是一系列 UTF-16 代码单元
 * 
 * 用 或{} 来计算字符串中变量的值，需要注意的是如果是表达式需要${表达式}
 * 
 * assert 是语言内置的断言函数，仅在检查模式下有效
 */

void main(){
  var a='aaa';
  print(a);

  var b = "dasdasd";
  print(b);

  var c = "dasv"+'123';
  print(c);

  var d = "dasv'115'";
  print(d);
}