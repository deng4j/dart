/**
 * late 修饰符有两种用法：
 *  1.声明一个非空变量，但不在声明时初始化
 *  2.延迟初始化一个变量
 * 
 * 如果没有初始化一个 late 变量，那么当变量被使用时会发生运行时错误
 */

late String description;

void main() {
  description = 'Feijoada!';
  print(description);
}