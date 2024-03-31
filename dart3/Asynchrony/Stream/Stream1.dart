/**
 * Stream 也是⽤于接收异步事件数据，和 Future 不同的是，它可以接收多个异步操作的结果（成功或失败）。 
 * 也就是说，在执⾏异步任务时，可以通过多次触发成功或失败事件来传递结果数据或错误异常。 
 * Stream 常⽤于会多次读取数 据的异步任务场景，如⽹络内容下载、⽂件读写等。
 */
void main(List<String> args) {
  Stream.fromFutures([
    // 1秒后返回结果
    Future.delayed(new Duration(seconds: 1), () {
      return "hello 1";
    }), // 抛出⼀个异常
    Future.delayed(new Duration(seconds: 2), () {
      throw AssertionError("Error");
    }), // 3秒后返回结果
    Future.delayed(new Duration(seconds: 3), () {
      return "hello 3";
    })
  ]).listen((data) {
    print(data);
  }, onError: (e) {
    print(e.message);
  }, onDone: () {});
}
