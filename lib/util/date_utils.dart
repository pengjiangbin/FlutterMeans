class DateUtils {
  static formatDate(String date) {
    DateTime time = DateTime.parse(date);
    int millis = time.millisecondsSinceEpoch;
    int distance = _currentTimeMillis() - millis;
    int dayLimit = millis - _currentDayMillis();
    if (distance < 3600000) {
      int minute = distance ~/ 60000;
      return '$minute分钟前';
    } else if (distance < dayLimit) {
      int hour = distance ~/ 3600000;
      return '$hour小时前';
    } else {
      return date;
    }
  }

  //获取当前时间戳
  static int _currentTimeMillis() {
    return new DateTime.now().millisecondsSinceEpoch;
  }

  //获取当天零点时刻的时间戳
  static int _currentDayMillis() {
    int year = DateTime.now().year;
    int month = DateTime.now().month;
    int day = DateTime.now().day;
    DateTime time = DateTime(year, month, day);
    return time.millisecondsSinceEpoch;
  }
}
