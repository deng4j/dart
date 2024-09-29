import 'dart:io';
import 'dart:convert';
/*
async和await
  这两个关键字的使用只需要记住两点：
    只有async方法才能使用await关键字调用方法
    如果调用别的async方法必须使用await关键字

async是让方法变成异步。
await是等待异步方法执行完成。
*/

void main() async {
  var result = await getDataFromZhihuAPI();
  print(result);
}

//api接口： http://news-at.zhihu.com/api/3/stories/latest
getDataFromZhihuAPI() async {
  //1、创建HttpClient对象
  var httpClient = new HttpClient();
  //2、创建Uri对象
  var uri = Uri.parse("http://172.20.10.3:8080/script/getServerIP");

  //3、发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  //4、关闭请求，等待响应
  var response = await request.close();
  //5、解码响应的内容
  return await response.transform(utf8.decoder).join();
}
