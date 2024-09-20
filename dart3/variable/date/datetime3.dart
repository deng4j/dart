void main(){
  //创建时间对象  2021-1-2
  DateTime date1 = DateTime(2021, 1, 2);
  //创建时间对象 2021-1-3
  DateTime date2 = DateTime(2021, 1, 3);
  // 时间比较  date1 是否在 date2之前  true
  bool isBefore = date1.isBefore(date2);
  print('isBefore $isBefore'); // 在之前

  // 时间比较  date1 是否在 date2之后  false
  bool isAfter = date1.isAfter(date2);
  print('isAfter $isAfter'); 

  // 时间比较  date1 与 date2是否相等 false
  bool isAtSameMomentAs = date1.isAtSameMomentAs(date2);
  print('isAtSameMomentAs  $isAtSameMomentAs'); 


  //两个时间相比较 大于返回1；等于返回0；小于返回-1。
  int compareTo = date1.compareTo(date2);
  print('compareTo $compareTo'); // -1
}