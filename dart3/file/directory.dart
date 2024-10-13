import 'dart:io';

void main() async{
  final filePath = "D:${Platform.pathSeparator}temp";
 
  try {
    Directory directory = new Directory(filePath);
    // 列出所有文件，不包括链接和子文件夹
    Stream<FileSystemEntity> entityList = directory.list(recursive: false, followLinks: false);
    await for(FileSystemEntity entity in entityList) {
    
        //文件、目录和链接都继承自FileSystemEntity
        //FileSystemEntity.type静态函数返回值为FileSystemEntityType
        //FileSystemEntityType有三个常量：
        //Directory、FILE、LINK、NOT_FOUND
        //FileSystemEntity.isFile .isLink .isDerectory可用于判断类型
        print(entity.path);
      }
  } catch(e) {
    print(e);
  }
}