import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:medica/app/data/model/user_data_model.dart';
import 'package:medica/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:medica/app/routes/app_pages.dart';

class FillYourProfileController extends GetxController {
  TextEditingController dateController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  final signUpData = Get.find<SignUpController>();

  final _image = Rx<File?>(null);
  File? get image => _image.value;
  set image(File? value) => _image.value = value;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  final _currntSelectedValue = ''.obs;
  String get currntSelectedValue => _currntSelectedValue.value;
  set currntSelectedValue(String value) => _currntSelectedValue.value = value;

  List gender = [
    "male",
    "female",
    "other",
  ];
  File? fileImage;
  FirebaseStorage storage = FirebaseStorage.instance;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) return;

      final imageTemporary = File(image.path);
      fileImage = imageTemporary;
      debugPrint(imageTemporary.toString());
      this.image = imageTemporary;
    } on PlatformException catch (e) {
      debugPrint("Error ==== $e");
    } catch (e) {
      print(e);
    }
  }

  Future datePicker() async {
    DateTime? date = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2200),
    );
    dateController.text = DateFormat.yMMMd().format(date!);
  }

  FirebaseFirestore store = FirebaseFirestore.instance;
  UserDataModel data = UserDataModel();

  Future<void> storeUserData() async {
    try {
      await storage.ref('image/${signUpData.uid}').putFile(fileImage!);
      final responce =
          await storage.ref('image/${signUpData.uid}').getDownloadURL();
      await store.collection('user').doc(signUpData.uid).set(UserDataModel(
            name: nameController.text,
            nickName: nickNameController.text,
            mobileNo: mobileController.text,
            dob: dateController.text,
            email: signUpData.emailController.text,
            gender: currntSelectedValue,
            password: signUpData.passwordController.text,
            image: responce,
          ).toJson());
      Get.rawSnackbar(title: "Success", message: "Create Profile");
      Get.toNamed(Routes.CREATE_PIN);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
