// 重定向构造函数
class Rect{
  int height;
  int width;

  // 主构造函数
  Rect(this.height,this.width);

  // 重定向构造函数
  Rect.forward(int a):this(a,10);


  getArea(){
    return this.height*this.width;
  } 
}

void main(){
  Rect r=new Rect.forward(9);
  print(r.getArea()); 
   
}