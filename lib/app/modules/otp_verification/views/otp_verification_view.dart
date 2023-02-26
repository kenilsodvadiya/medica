import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/app/routes/app_pages.dart';
import 'package:pinput/pinput.dart';

import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  const OtpVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "OTP Code Verification",
                    style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              Text(
                // "code has been send to ${controller.forgotData.borderCheck2 == true ? controller.signUpData.emailController.text.replaceRange(2, controller.signUpData.emailController.text.indexOf('@') - 1, '***') : controller.signUpData.phoneController.text.replaceRange(1, 8, '******')}",
                'iiiiiii',
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    // overflow: TextOverflow.clip,
                  ),
                ),
                // maxLines: 1,
              ),
              const SizedBox(
                height: 50,
              ),
              Pinput(
                defaultPinTheme: controller.defaultPinTheme,
                focusedPinTheme: controller.focusedPinTheme,
                // submittedPinTheme: controller.submittedPinTheme,
                length: 4,

                showCursor: true,
              ),
              const SizedBox(
                height: 50,
              ),
              Obx(
                () => Container(
                  child: controller.seconds != 0
                      ? Obx(
                          () => RichText(
                            text: TextSpan(
                              text: "Resend code in ",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                              ),
                              children: [
                                TextSpan(
                                  text: controller.seconds.toString(),
                                  style: const TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 19,
                                  ),
                                ),
                                const TextSpan(
                                  text: "s",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : TextButton(
                          onPressed: () {
                            controller.seconds = 60;
                          },
                          child: const Text(
                            "Resend OTP",
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 19,
                            ),
                          ),
                        ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.indigo,
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.CREATE_NEW_PASSWORD);
                  },
                  child: Text(
                    "Verify",
                    style: GoogleFonts.urbanist(
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
