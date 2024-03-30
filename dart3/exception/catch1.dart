void show(List list){
  try{
    print(list[10]);
  } on RangeError catch(e){
    print(e);
  }catch(e){
    // 如果 catch 子句没有 指定一个类型，该子句可以处理任何类型的抛出对象
    print(e);
  }
}

void main(List<String> args) {
  show(List.of([1,2,3]));
}