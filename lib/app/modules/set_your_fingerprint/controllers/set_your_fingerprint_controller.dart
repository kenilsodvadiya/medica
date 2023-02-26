import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';

class SetYourFingerprintController extends GetxController {
  final _isAuthentication = false.obs;
  bool get isAuthentication => _isAuthentication.value;
  set isAuthentication(bool value) => _isAuthentication.value = value;
}

class LocalAuth {
  static Future<bool> hasBiometrics() async {
    return await auth.canCheckBiometrics;
  }

  static Future<List<BiometricType>> getBiometrics() async {
    try {
      return await auth.getAvailableBiometrics();
    } on PlatformException {
      return <BiometricType>[];
    }
  }

  static final auth = LocalAuthentication();

  static Future<bool> authenticate() async {
    final isAvalable = await hasBiometrics();
    if (!isAvalable) return false;
    try {
      return await auth.authenticate(
          localizedReason: "Scan fingerprint to Authntication",
          authMessages: <AuthMessages>[
            const AndroidAuthMessages(
              signInTitle: "Fingerprint id Required",
            ),
          ],
          // authMessages: ,
          options: const AuthenticationOptions(
            useErrorDialogs: true,
            stickyAuth: true,
          ));
    } on PlatformException {
      return false;
    }
  }
}
