void show(List list){
  try{
    print(list[10]);
  } on RangeError catch(e){
    print(e);
  }catch(e){
    print(e);
  }finally{
    print("最终处理");
  }
}

void main(List<String> args) {
  show(List.of([1,2,3]));
}