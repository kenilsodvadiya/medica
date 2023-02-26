import 'package:get/get.dart';

class CreateNewPasswordController extends GetxController {
  final _isChecked = false.obs;
  bool get isChecked => _isChecked.value;
  set isChecked(bool value) => _isChecked.value = value;

  final _isVisible1 = false.obs;
  bool get isVisible1 => _isVisible1.value;
  set isVisible1(bool value) => _isVisible1.value = value;

  final _isVisible2 = false.obs;
  bool get isVisible2 => _isVisible2.value;
  set isVisible2(bool value) => _isVisible2.value = value;
}
