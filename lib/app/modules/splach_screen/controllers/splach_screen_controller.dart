import 'package:firebase_auth/firebase_auth.dart';
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
    ).then((value) {
      if (FirebaseAuth.instance.currentUser != null) {
        Get.toNamed(Routes.HOME);
      } else {
        Get.toNamed(Routes.SPLACH_SCREEN2);
      }
    });
  }
}
