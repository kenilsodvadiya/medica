import 'package:get/get.dart';
import 'package:medica/app/modules/sign_up/controllers/sign_up_controller.dart';

class ForgotPasswordController extends GetxController {
  final signUpData = Get.find<SignUpController>();
  final _borderCheck = false.obs;
  bool get borderCheck => _borderCheck.value;
  set borderCheck(bool value) => _borderCheck.value = value;

  final _borderCheck2 = false.obs;
  bool get borderCheck2 => _borderCheck2.value;
  set borderCheck2(bool value) => _borderCheck2.value = value;
}
