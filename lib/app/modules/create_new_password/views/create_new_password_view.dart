import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/app/routes/app_pages.dart';

import '../controllers/create_new_password_controller.dart';

class CreateNewPasswordView extends GetView<CreateNewPasswordController> {
  const CreateNewPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  "Create new password",
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
              height: 25,
            ),
            SvgPicture.asset(
              "assets/verified.svg",
              height: 350,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Obx(() => TextFormField(
                    obscureText: controller.isVisible1,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      hintText: "password",
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.isVisible1 = !controller.isVisible1;
                          },
                          icon: Icon(controller.isVisible1
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintStyle: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Obx(() => TextFormField(
                    obscureText: controller.isVisible2,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      hintText: "confirm password",
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.isVisible2 = !controller.isVisible2;
                          },
                          icon: Icon(controller.isVisible2
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      hintStyle: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Checkbox(
                      value: controller.isChecked,
                      onChanged: (value) {
                        controller.isChecked = value!;
                      }),
                ),
                Text(
                  "Remember me",
                  style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                      // fontSize: 20,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.indigo,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/succes-removebg-preview.png",
                              scale: 1.5,
                              height: 180,
                            ),
                            Center(
                              child: Text(
                                "Congratulations!",
                                style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              child: Text(
                                "Your account is ready to use. You will be redirected to the Home page in a few seconds",
                                style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.indigo,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SpinKitCircle(
                              color: Colors.indigo,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    );
                    Future.delayed(
                      const Duration(seconds: 2),
                      () => Get.offNamedUntil(Routes.SIGN_IN,
                          (route) => Routes.SIGN_IN == Get.currentRoute),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: GoogleFonts.urbanist(
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
