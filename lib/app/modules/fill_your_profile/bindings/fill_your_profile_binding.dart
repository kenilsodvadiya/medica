import 'package:get/get.dart';

import '../controllers/fill_your_profile_controller.dart';

class FillYourProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FillYourProfileController>(
      () => FillYourProfileController(),
    );
  }
}
