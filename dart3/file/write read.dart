import 'dart:convert';
import 'dart:io';

void main() async{
  final filePath = "D:${Platform.pathSeparator}temp${Platform.pathSeparator}1.txt";
 
  try {
    File file = new File(filePath);
    // 直接调用File的writeAs函数时，默认文件打开方式为WRITE:如果文件存在，会将原来的内容覆盖，如果不存在，则创建文件
    //写入String，默认将字符串以UTF8进行编码
    await file.writeAsString("你好\n哈哈\n");
    // 追加模式
    await file.writeAsBytes(Utf8Encoder().convert("好的"),mode: FileMode.append);
    

    //默认返回的String编码为UTF8
    //SYSTEM_ENCODING可以自动检测并返回当前系统编码
    List<String> lines = await file.readAsLines();
    lines.forEach(
        (String line) => print(line)
    );
  } catch(e) {
    print(e);
  }
}