import 'package:get/get.dart';

import '../controllers/splach_screen2_controller.dart';

class SplachScreen2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplachScreen2Controller>(
      () => SplachScreen2Controller(),
    );
  }
}
