import 'package:intl/intl.dart';

class DateConverterUtil {
  static final _dtFormatString = 'yyyy/MM/dd HH:mm';

  static String convertDateTime(DateTime? dt) {
    if (dt == null) {
      return '';
    }

    return DateFormat(_dtFormatString).format(dt);
  }

  static String convertDateTimeString(String? value) {
    if (value == null) {
      return '';
    }

    final dt = DateTime.parse(value);

    return DateFormat(_dtFormatString).format(dt);
  }
}
