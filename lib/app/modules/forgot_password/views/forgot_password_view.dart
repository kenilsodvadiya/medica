import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
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
                  Text(
                    "Forgot Password",
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
                height: 30,
              ),
              SvgPicture.asset(
                "assets/forgot_password.svg",
                height: 250,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Select which contact details should we use to reset your password",
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => InkWell(
                  onTap: () {
                    controller.borderCheck = !controller.borderCheck;
                    controller.borderCheck2 = false;
                  },
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: controller.borderCheck
                            ? Colors.indigo
                            : Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.solidCommentDots,
                            color: Colors.indigo,
                            size: 45,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "via SMS:",
                              style: GoogleFonts.urbanist(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              // controller.signUpData.phoneController.text
                              //         .replaceRange(1, 8, '******') ??
                              '11102320255',
                              style: GoogleFonts.urbanist(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => InkWell(
                  onTap: () {
                    controller.borderCheck2 = !controller.borderCheck2;
                    controller.borderCheck = false;
                  },
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: controller.borderCheck2
                            ? Colors.indigo
                            : Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.solidEnvelope,
                            color: Colors.indigo,
                            size: 45,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "via Email:",
                                style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                // controller.signUpData.emailController.text
                                //         .replaceRange(
                                //             3,
                                //             controller.signUpData
                                //                     .emailController.text
                                //                     .indexOf('@', 5) -
                                //                 3,
                                //             '***') ??
                                'abc@gmail.com',
                                style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.OTP_VERIFICATION);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: Text(
                    "Continue",
                    style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
