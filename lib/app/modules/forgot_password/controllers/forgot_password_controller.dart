import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final _borderCheck = false.obs;
  bool get borderCheck => _borderCheck.value;
  set borderCheck(bool value) => _borderCheck.value = value;

  final _borderCheck2 = false.obs;
  bool get borderCheck2 => _borderCheck2.value;
  set borderCheck2(bool value) => _borderCheck2.value = value;

  final _email = ''.obs;
  get email => _email.value;
  set email(value) => _email.value = value;

  FirebaseFirestore store = FirebaseFirestore.instance;
  Future getdata() async {
    try {
      final responce = await store.collection('user').doc().get();
      print(responce);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
