// => 符号用于缩写单行函数的语法
sum (a,b) =>  a +b;

// 等价于
int sumNormal(a,b){
  return a+b;
}

void main(List<String> args) {
  print(sum(1,2));
  print(sumNormal(1,2));
}