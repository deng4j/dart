import 'dart:io';
import 'dart:convert';

void main() async {
  var future = getDataOne();
  future.then((data) {
    print("getDataOne：" + data);
    return getDataTow();
  }).then((data) {
    print("getDataTow：" + data);
  });
  print("继续执行。。。。");
}

// async方法返回的必须是一个Future泛型的对象
Future<String> getDataOne() async {
  var data = await "One"; // 防止主程序阻塞
  return data;
}

Future<String> getDataTow() async {
  var data = await "Tow";
  return data;
}
