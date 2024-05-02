/**
 * 使用静态方法wait 等待多个任务全部完成后回调。
 */
import 'dart:async';

void main() {
  print("main start");

  Future task1 = new Future(() {
    print("task 1");
    return 1;
  });

  Future task2 = new Future(() {
    print("task 2");
    return 2;
  });

  Future task3 = new Future(() {
    print("task 3");
    return 3;
  });

  Future fut = Future.wait([task1, task2, task3]);
  fut.then((responses) {
    print(responses);
  });

  print("main stop");
}
