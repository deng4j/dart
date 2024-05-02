// 生成器分为同步和异步，分别返回Iterable和Stream对象
void main(List<String> args) {
  Iterable<int> it = sync_yield(10);
  for(var v in it){
    print(v);
  }
}

// 使用sync*/yield定义同步生成器
Iterable<int> sync_yield(int n) sync*{
  int k = 0;
  while(k<n) yield k++;
}