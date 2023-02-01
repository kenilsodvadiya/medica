import 'package:get/get.dart';

import '../controllers/sign_in_option_controller.dart';

class SignInOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInOptionController>(
      () => SignInOptionController(),
    );
  }
}
