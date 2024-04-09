import 'dart:async';

void main(List<String> args) {
  const period = const Duration(seconds: 2);
  int count = 0;
  // 多次定时器
  Timer.periodic(period, (timer) {
    print(DateTime.now().toString());
    count++;
    if (count >= 5) {
      timer.cancel();
    }
  });
}
