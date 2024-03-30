/*
dart:core 库中identical 函数的用法介绍如下。

用法:
bool identical(
   Object? a,    
   Object? b   
)
检查两个引用是否指向同一个对象。
*/

void main() {
  var o1 = new Object();
  var o2 = new Object();

  print(identical(o1, o2)); //false  不共享存储空间，true 共享存储空间

  print("------------------------------------");

  //表示实例化常量构造函数
  //o1 和 o2共享了存储空间
  var a1 = const Object();
  var a2 = const Object();
  print(identical(a1,a2));  //true 共享存储空间

  print("------------------------------------");

  print(identical([2],[2])); //false

  var a=[2];
  var b=[2];
  print(identical(a,b)); //false 不共享存储空间

  print(identical(const [2],const [2])); //true

  print("------------------------------------");

  const a3 = [2];
  const b3 = [2];
  print(identical(a3, b3)); //true 共享存储空间

  const c3 = [2];
  const d3 = [3];
  print(identical(c3, d3)); //false  不共享存储空间
}
// 发现：const关键词在多个地方创建相同的对象的时候，内存中只保留了一个对象

// 共享存储空间条件：1、常量   2、值相等