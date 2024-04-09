import 'dart:async';

void main(List<String> args) {
  const timeout = const Duration(seconds: 2);

  // 一次性定时任务
  Timer(timeout, () {
    //倒计时结束
    print(DateTime.now().toString());
  });
}
