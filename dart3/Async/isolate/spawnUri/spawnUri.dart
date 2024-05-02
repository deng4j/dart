import 'dart:isolate';

/**
 * 将非常耗时的任务添加到事件队列后，仍然会拖慢整个事件循环的处理，甚至是阻塞。
 * 可见基于事件循环的异步模型仍然是有很大缺点的，这时候我们就需要Isolate
 * 
 * 可以把它理解为Dart中的线程。但它又不同于线程，更恰当的说应该是微线程，或者说是协程。
 * 它与线程最大的区别就是不能共享内存，因此也不存在锁竞争问题，两个Isolate完全是两条独立的执行线，
 * 且每个Isolate都有自己的事件循环，它们之间只能通过发送消息通信，所以它的资源开销低于线程。
 * 
 * spawnUri方法有三个必须的参数，
 *  第一个是Uri，指定一个新Isolate代码文件的路径，
 *  第二个是参数列表，类型是List<String>，
 *  第三个是动态消息。需要注意，用于运行新Isolate的代码文件中，必须包含一个main函数，它是新Isolate的入口方法，该main函数中的args参数列表，正对应spawnUri中的第二个参数。如不需要向新Isolate中传参数，该参数可传空List
 */

void main() {
  print("main isolate start");
  create_isolate();
  print("main isolate stop");
}

// 创建一个新的 isolate
create_isolate() async {
  ReceivePort rp = new ReceivePort();
  SendPort port1 = rp.sendPort;

  Isolate newIsolate = await Isolate.spawnUri(
      new Uri(path: "./other_task.dart"),
      ["hello, isolate", "this is args"],
      port1);

  late SendPort port2;
  rp.listen((message) {
    print("main isolate message: $message");
    if (message[0] == 0) {
      port2 = message[1];
    } else {
      port2.send([1, "这条信息是 main isolate 发送的"]);
    }
  });

  // 可以在适当的时候，调用以下方法杀死创建的 isolate
  // newIsolate.kill(priority: Isolate.immediate);
}
