import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

class SignUpController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();

  final _isChecked = false.obs;
  bool get isChecked => _isChecked.value;
  set isChecked(bool value) => _isChecked.value = value;

  final _visibility = false.obs;
  bool get visibility => _visibility.value;
  set visibility(bool value) => _visibility.value = value;

  FirebaseAuth auth = FirebaseAuth.instance;

  final _uid = ''.obs;
  String get uid => _uid.value;
  set uid(String value) => _uid.value = value;

  Future<void> userSignUp() async {
    try {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
      );
      final user = await auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      uid = user.user!.uid;
      // Token(uid);
      print(user);
      Get.back();
      Get.rawSnackbar(
          title: "Success", message: "Account Created Successfully.");
      Get.offAllNamed(Routes.FILL_YOUR_PROFILE);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
