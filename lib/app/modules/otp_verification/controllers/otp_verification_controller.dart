import 'dart:async';

import 'package:get/get.dart';

class OtpVerificationController extends GetxController {
  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  // int seconds = 60;

  final _seconds = 60.obs;
  int get seconds => _seconds.value;
  set seconds(int value) => _seconds.value = value;

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        seconds--;
      }
    });
  }
}
