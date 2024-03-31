/**
 * const修饰的常量在一开始的时候就需要赋值（编译的时候就已经赋好值了），被修饰的对象表示是一个不可变的常量
 * 
 * final修饰的常量可以在一开始的时候不赋值，但同样只能赋值一次（惰性赋值，运行时第一次使用时赋值）
 */
void main(){
  const PI = 3.1415926;
  print(PI);

  final a;
  a = 123;
  print(a);


  const List<int> list = [0,1,2];
  // list[0] = 1; // 不能再改变了

  final List<int> list1 = [0,1,2];
  list1[0] = 1; // 可以改变
  print(list1);
}


