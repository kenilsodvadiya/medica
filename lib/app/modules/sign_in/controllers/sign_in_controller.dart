import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();

  final _isChecked = false.obs;
  bool get isChecked => _isChecked.value;
  set isChecked(bool value) => _isChecked.value = value;

  final _visibility = false.obs;
  bool get visibility => _visibility.value;
  set visibility(bool value) => _visibility.value = value;
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> userSignIn() async {
    try {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
      );
      final user = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      Get.back();
      Get.rawSnackbar(title: "Success", message: "Login Successfully");
      Get.toNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      Get.back();
      debugPrint(e.message);
    } catch (e) {
      Get.back();
      debugPrint(e.toString());
    }
  }
}
