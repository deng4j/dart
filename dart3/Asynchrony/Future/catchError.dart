/**
 * 除了then方法，还可以使用catchError来处理异常
 */

void main(List<String> args) {
  new Future(() {
    print("async task");
  }).then((res) {
    print("async task complete");
  }).catchError((e) {
    print(e);
  });
}
