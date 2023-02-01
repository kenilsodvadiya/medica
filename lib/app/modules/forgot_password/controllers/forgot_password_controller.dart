import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final _borderCheck = false.obs;
  bool get borderCheck => _borderCheck.value;
  set borderCheck(bool value) => _borderCheck.value = value;

  final _borderCheck2 = false.obs;
  bool get borderCheck2 => _borderCheck2.value;
  set borderCheck2(bool value) => _borderCheck2.value = value;
}
