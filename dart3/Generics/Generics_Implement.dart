// 泛型接口
abstract class Cache<T> {
  getByKey(String key);
 
  setByKey(String key, T value);
}
 
 // 保持一致
class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
  }
 
  @override
  setByKey(String key, T value) {}
}
 
main() {
  FileCache fileCache = new FileCache<String>();  
  //实例化FileCache对象的时候，指定"T"的类型             
  fileCache.setByKey("name", "深圳");
  //报错，指定setByKey()的第二个参数为String类型，但是这里传入了int类型
  fileCache.setByKey("name", 123);                             
}
