// 自执行方法，即指不需要主动的调用该方法，当程序启动的时候会自动执行该段代码
void main(List<String> args) {
  (() {
    print("这是一段自执行代码！");
  }());

  ((int i) {
    print(i);
  })(50);
}
