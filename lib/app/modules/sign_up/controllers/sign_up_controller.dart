import 'package:get/get.dart';

class SignUpController extends GetxController {
  final _isChecked = false.obs;
  bool get isChecked => _isChecked.value;
  set isChecked(bool value) => _isChecked.value = value;

  final _visibility = false.obs;
  bool get visibility => _visibility.value;
  set visibility(bool value) => _visibility.value = value;
}
