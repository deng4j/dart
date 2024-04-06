// Dart中我们也可以在构造函数体运行之前初始化实例变量
class Rect{
  int height;
  int width;

  // 断言要在检查模式下生效
  Rect(this.height,this.width): assert(height > 10);

  // 初始化实例变量
  Rect.now():height=2,width=10{    
    print("${this.height}---${this.width}");
  }


  getArea(){
    return this.height*this.width;
  } 
}

void main(){
  Rect r1=new Rect(9,1);
  print(r1.getArea()); 

  Rect r=new Rect.now();
  print(r.getArea()); 
   
}