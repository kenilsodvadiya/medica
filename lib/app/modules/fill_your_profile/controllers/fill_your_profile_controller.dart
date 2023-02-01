import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class FillYourProfileController extends GetxController {
  TextEditingController dateController = TextEditingController();

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

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) return;

      final imageTemporary = File(image.path);
      debugPrint(imageTemporary.toString());
      this.image = imageTemporary;
    } on PlatformException catch (e) {
      debugPrint("Error ==== $e");
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
}
