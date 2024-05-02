/**
 * 当Future中的任务完成后，我们往往需要一个回调，这个回调立即执行，不会被添加到事件队列。
 */
import 'dart:async';

void main() {
  print("main start");

  Future fut = new Future.value(18);
  // 使用then注册回调
  fut.then((res) {
    print(res);
  });

  // 链式调用，可以跟多个then，注册多个回调
  new Future(() {
    print("async task");
  }).then((res) {
    print("async task complete");
  }).then((res) {
    print("async task after");
  });

  print("main stop");
}
