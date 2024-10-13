import 'dart:io';

// 适用于相对简单的文件读取场景，对于小文件，一次性加载到内存中可能更为方便
void main() {
  final filePath = "D:${Platform.pathSeparator}temp${Platform.pathSeparator}1.txt";
 
  try {
    File file = new File(filePath);
    
    Future<String> futureStr = file.readAsString();
    futureStr.then((value){
      print(value);
    });
  } catch(e) {
    print(e);
  }
}