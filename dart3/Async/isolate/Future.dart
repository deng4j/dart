import 'package:flutter/foundation.dart';
import  'dart:io';


/**
 * 方法执行在几毫秒或十几毫秒左右的，应使用Future
 * 如果一个任务需要几百毫秒或之上的，则建议创建单独的Isolate
 * 
 * compute 函数有两个必须的参数，第一个是待执行的函数，这个函数必须是一个顶级函数，不能是类的实例方法，可以是类的静态方法，
 * 第二个参数为动态的消息类型，可以是被运行函数的参数。
 * 
 * 注意：这里不用简单dart主方法运行，要用flutter机器运行
 */

// 创建一个新的Isolate，在其中运行任务doWork
create_new_task() async{
  var str = "New Task";
  var result = await compute(doWork, str);
  print(result);
}


String doWork(String value){
  print("new isolate doWork start");
  // 模拟耗时5秒
  sleep(Duration(seconds:5));

  print("new isolate doWork end");
  return "complete:$value";
}

void main() {
  print("main isolate start");
  create_new_task();
  print("main isolate stop");
}

