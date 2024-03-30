void show(int a){
  if(a==0){
    // 可以抛出任意对象
    throw 'by zero';
  }
}

void main(List<String> args) {
  show(0);
}