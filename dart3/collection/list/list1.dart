void main(List<String> args) {
  var list=['a','b','c']; // 创建list方式1
  print(list);        
  print(list.length);
  print(list[0]); 

  list.add('one');
  list.add('two');
  list.add('three'); 

  print(list); 

  var list1=<String>['a','b','c']; // 泛型
}