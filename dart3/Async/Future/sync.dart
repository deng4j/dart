import 'dart:async';

// sync是同步方法，任务会被立即执行
void main() {
  print("main start");

  new Future.sync(() {
    print("sync task");
  });

  new Future(() {
    print("async task");
  });

  print("main stop");
}
