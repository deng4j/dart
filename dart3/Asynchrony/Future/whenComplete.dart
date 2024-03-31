/**
 * 有些时候，我们会遇到⽆论异步任务执⾏成功或失败都需要做⼀些事的场景，
 * ⽐如在⽹络请求前弹出加载对话框，在请 求结束后关闭对话框。这种场景，有两种⽅法，
 * 第⼀种是分别在 then 或 catch 中关闭⼀下对话框，第⼆种就是使 ⽤ Future 的 whenComplete 回调
 */

void main(List<String> args) {
  Future.delayed(new Duration(seconds: 2), () {
    //return "hi world!";
    throw AssertionError("Error");
  }).then((data) {
    //执⾏成功会⾛到这⾥
    print(data);
  }).catchError((e) {
    //执⾏失败会⾛到这⾥
    print(e);
  }).whenComplete(() {
    print("⽆论成功或失败都会⾛到这⾥");
  });
}
