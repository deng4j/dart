void main(){
  //创建时间对象  2021-1-2
  DateTime date1 = DateTime(2021, 1, 2);
  //创建时间对象 2021-1-3
  DateTime date2 = DateTime(2021, 1, 3);

  //计算两个时间差 date1 - date2 
  Duration difference = date1.difference(date2);
  print('时间差 difference $difference'); //  -24:00:00.000000

  int inMilliseconds  = difference.inMilliseconds ;
  int intHours = difference.inHours;
  int inDays = difference.inDays;

  print('时间差 毫秒 $inMilliseconds'); 
  print('时间差 小时 $intHours'); 
  print('时间差 天 $inDays'); 
}