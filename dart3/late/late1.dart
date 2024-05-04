/**
 * late 修饰符有两种用法：
 *  1.声明一个非空变量，但不在声明时初始化
 *  2.延迟初始化一个变量
 * 
 * 如果没有初始化一个 late 变量，那么当变量被使用时会发生运行时错误
 * 
 * 声明了一个late变量，如果你要初始化前使用它，所以要避免使用late关键字，可以使用?
 */

late String description;
late int num;
int? age;

void main() {
  description = 'Feijoada!'; // 初始化
  print(description);

  try {
    if (num == null) {
      // 未初始化不能使用，报错LateInitializationError
      print('空');
    }
  } catch (e) {
    print('LateInitializationError');
  }

  if (age == null) {
    print('age null');
  }
}
