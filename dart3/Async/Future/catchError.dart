/**
 * 异步任务发⽣错误可以使用catchError来处理异常
 */

void main(List<String> args) {
  new Future(() {
    print("async task");
    throw AssertionError("error");
  }).then((res) {
    print("async task complete");
  }).catchError((e) {
    print(e);
  });
}
