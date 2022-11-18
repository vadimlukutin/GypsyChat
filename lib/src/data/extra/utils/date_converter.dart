import 'package:intl/intl.dart';

class DateConverterUtil {
  static String convertDateTime(DateTime? dt) {
    if (dt == null) {
      return '';
    }

    return DateFormat('yyyy/MM/dd HH:mm').format(dt);
  }
}
