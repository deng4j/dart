/**
 * MicroTask queue 微任务队列
 * 
 * 表示一个短时间内就会完成的异步任务。它的优先级最高，高于event queue，只要队列中还有任务，就可以一直霸占着事件循环。
 * microtask queue添加的任务主要是由 Dart内部产生。
 * 
 * 在每一次事件循环中，Dart总是先去第一个microtask queue中查询是否有可执行的任务，如果没有，才会处理后续的event queue的流程。
 */

import  'dart:async';

void  myTask(){
    print("this is my task");
}

void  main() {
    // 1. 使用 scheduleMicrotask 方法添加
    scheduleMicrotask(myTask);

    // 2. 使用Future对象添加
    new  Future.microtask(myTask);

    print("main stop");
}
