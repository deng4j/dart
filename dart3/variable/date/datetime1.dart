void main(){
  // 获取当前时间对象
  DateTime now = DateTime.now();

  // 创建的时间对象为 2021年1月1日
  DateTime y2k = DateTime(2021); 

  // 创建的时间对象为 2021年1月2日
  y2k = DateTime(2021, 1, 2); 

  // 创建的时间对象为 2021年1月1日  UTC
  y2k = DateTime.utc(2021); 

  // 根据毫秒来创建时间对象
  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000,
      isUtc: true);

  // 将 ISO 8601 类型的字符串时间解析为时间对象.
  y2k = DateTime.parse('2000-01-01T00:00:00Z');
  
  print(now);
}