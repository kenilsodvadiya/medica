import 'package:get/get.dart';

import '../controllers/set_your_fingerprint_controller.dart';

class SetYourFingerprintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetYourFingerprintController>(
      () => SetYourFingerprintController(),
    );
  }
}
