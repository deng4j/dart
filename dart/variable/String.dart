/**
 * Dart里面的String是一系列 UTF-16 代码单元
 * 
 * 用 或{} 来计算字符串中变量的值，需要注意的是如果是表达式需要${表达式}
 * 
 * assert 是语言内置的断言函数，仅在检查模式下有效
 */

void main(){
  // 单引号
  String a='aaa';
  print(a);

  // 双引号
  String b = "bbb";
  print(b);

  String c = "ccc"+'123';
  print(c);

  String d = "ddd'115'";
  print(d);

  // 三引号
  String e = """
             eeee
            """;
  print(e);

  // 拼接
  print(a+b);
  print("$a $b");
}