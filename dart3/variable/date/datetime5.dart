void main(){
  //获取当前的时间
  DateTime date = DateTime.now();
  //组合 
  String timestamp = "${date.year.toString()}-${date.month.toString().padLeft(2,'0')}-${date.day.toString().padLeft(2,'0')} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}";
  print(timestamp);//2021-12-05 21:52
}