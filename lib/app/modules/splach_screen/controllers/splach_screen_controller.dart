import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

class SplachScreenController extends GetxController {
  @override
  void onInit() {
    splach();
    super.onInit();
  }

  void splach() {
    Future.delayed(
      const Duration(seconds: 3),
    ).then((value) => Get.offNamed(Routes.SPLACH_SCREEN2));
  }
}
