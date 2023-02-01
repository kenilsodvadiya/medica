import 'package:get/get.dart';

import '../modules/fill_your_profile/bindings/fill_your_profile_binding.dart';
import '../modules/fill_your_profile/views/fill_your_profile_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/otp_verification/bindings/otp_verification_binding.dart';
import '../modules/otp_verification/views/otp_verification_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_in_option/bindings/sign_in_option_binding.dart';
import '../modules/sign_in_option/views/sign_in_option_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/splach_screen/bindings/splach_screen_binding.dart';
import '../modules/splach_screen/views/splach_screen_view.dart';
import '../modules/splach_screen2/bindings/splach_screen2_binding.dart';
import '../modules/splach_screen2/views/splach_screen2_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLACH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLACH_SCREEN,
      page: () => const SplachScreenView(),
      binding: SplachScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLACH_SCREEN2,
      page: () => const SplachScreen2View(),
      binding: SplachScreen2Binding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN_OPTION,
      page: () => const SignInOptionView(),
      binding: SignInOptionBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.FILL_YOUR_PROFILE,
      page: () => const FillYourProfileView(),
      binding: FillYourProfileBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFICATION,
      page: () => const OtpVerificationView(),
      binding: OtpVerificationBinding(),
    ),
  ];
}
