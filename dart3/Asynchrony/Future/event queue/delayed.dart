import  'dart:async';
import  'dart:io';

/**
 * 表示在延迟时间到了之后将任务加入到Event队列
 * 
 * 需要注意的是，这并不是准确的，万一前面有很耗时的任务，那么你的延迟任务不一定能准时运行。
 */
void  main() {
    print("main start");

    // 延时任务添加到event队列
    new Future.delayed(new  Duration(seconds:1),(){
        print('task delayed');
    });

    new Future((){
        // 模拟耗时5秒
        sleep(Duration(seconds:5));
        print("5s task");
    });

    print("main stop");
}
