/*
  Null safety翻译成中文的意思是空安全。
  null safety 可以帮助开发者避免一些日常开发中很难被发现的错误，并且额外的好处是可以改善性能。
  Flutter2.2.0（2021年5月19日发布） 之后的版本都要求使用null safety。

  ? 可空类型，建议使用late关键字代替，因为可空类型会带来很多麻烦

  ! 类型断言
*/

// 可以返回null
String? getData(apiUrl){
  if(apiUrl!=null){
    return "this is server data";
  }
  return null;
}

void main(List<String> args) {
  print(getData(null));
  }