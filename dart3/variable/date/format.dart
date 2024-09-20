import 'package:intl/intl.dart';

void main() {
  print(formatDuration(Duration(minutes: 900, seconds: 3)));
}

String formatDuration(Duration duration) {
  String hours = duration.inHours.toString().padLeft(0, '2');
  String minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
  String seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
  return "$hours:$minutes:$seconds";
}

DateTime strToDate(String str) {
  var strDate = 'May 04, 2021 at 7:21:10 PM UTC+5';
  var date;
  try {
    final dateFormat = DateFormat(r'''MMMM dd, yyyy 'at' hh:mm:ss a Z''');
    date = dateFormat.parse(strDate);
  } on Exception catch (exception) {
    print(exception);
  }
  return date;
}
