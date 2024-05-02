/**
 * 事件队列(event queue)，包含所有的外来事件：I/O、mouse events、drawing events、timers、isolate之间的信息传递。
 * 
 */

import 'dart:async';

void myTask() {
  print("this is my task");
}

void main() {
  // 添加到event 队列
  new Future(myTask);

  print("main stop");
}
