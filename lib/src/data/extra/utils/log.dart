import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:logging/logging.dart' as logging;

class VlcLog {
  VlcLog.init() {
    var logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
        //lineLength: 120, // width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: true, // Should each log print contain a timestamp
        noBoxingByDefault: true,
      ),
    );

    logging.Logger.root.level = logging.Level.ALL;
    logging.Logger.root.onRecord.listen(
      (record) {
        if (kDebugMode) {
          if (record.level.value == logging.Level.INFO.value) {
            logger.i(record.message);
          } else if (record.level.value == logging.Level.WARNING.value) {
            logger.w(record.message);
          } else if (record.level.value == logging.Level.SEVERE.value) {
            logger.e(record.message);
          } else {
            logger.i(record.message);
            //print('${record.level.name}: ${record.time}: ${record.message}');
          }
        }
      },
    );
  }
}
