import 'dart:io';

void main(){
  final filePath = "D:${Platform.pathSeparator}temp${Platform.pathSeparator}1.txt";
 
  try {
    File file = new File(filePath);
    // 创建文件，如果不存在的话
    file.create(recursive: true);
  } catch(e) {
    print(e);
  }
}