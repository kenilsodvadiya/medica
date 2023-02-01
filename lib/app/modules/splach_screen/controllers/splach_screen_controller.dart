import 'package:get/get.dart';
import 'package:medica/app/modules/splach_screen2/views/splach_screen2_view.dart';

class SplachScreenController extends GetxController {
  @override
  void onInit() {
    splach();
    super.onInit();
  }

  void splach() {
    Future.delayed(
      const Duration(seconds: 3),
    ).then((value) => Get.to(const SplachScreen2View()));
  }
}
