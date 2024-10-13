import 'dart:convert';
import 'dart:io';

/**
 * 允许你通过监听事件的方式来处理文件内容，这在处理大型文件时可以提供更好的性能和响应性。
 * 逐块读取而不是一次性加载整个文件到内存中。
 */
void main() async{
  final filePath = "D:${Platform.pathSeparator}temp${Platform.pathSeparator}1.txt";
 
  try {
    File file = new File(filePath);
    
    Stream<List<int>> stream = file.openRead();
 
    var lines = Utf8Decoder()
          .bind(stream)
          .transform(const LineSplitter());

    await for (final line in lines) {
      print('${line}');
    }
   
  } catch(e) {
    print(e);
  }
}