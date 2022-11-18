import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gypsy_chat/src/app/pages/rooms/rooms_page_view.dart';
import 'package:gypsy_chat/src/data/extra/services/services.dart';
import 'package:gypsy_chat/src/data/extra/utils/log.dart';

Future<void> main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();

  VlcLog.init();

  await initServices();

  binding
    ..attachRootWidget(
      GetCupertinoApp(
        title: 'Gypsy Chat',
        home: RoomsPageView(),
      ),
    )
    ..scheduleWarmUpFrame();
}
