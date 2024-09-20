void main(){
  // 获取当前时间对象
  DateTime now = DateTime.now();

  //获取对应的毫秒
  int time = now.microsecondsSinceEpoch;
  print("毫秒 $time");

  //获取当前时间的年
  int year = now.year;
  //获取当前时间的月
  int month = now.month;
  //获取当前时间的日
  int day = now.day;
  //获取当前时间的时
  int hour = now.hour;
  //获取当前时间的分
  int minute = now.minute;
  //获取当前时间的秒
  int millisecond = now.millisecond;

  print("组合 $year-$month-$day $hour:$minute:$millisecond");
}