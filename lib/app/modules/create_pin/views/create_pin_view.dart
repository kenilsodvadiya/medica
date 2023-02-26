import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/app/routes/app_pages.dart';
import 'package:pinput/pinput.dart';

import '../controllers/create_pin_controller.dart';

class CreatePinView extends GetView<CreatePinController> {
  const CreatePinView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                "Create New PIN",
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
            height: 50,
          ),
          Text(
            "Add a PIN number to make your Account more secure",
            style: GoogleFonts.urbanist(
              textStyle: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          Pinput(
            obscureText: true,
            obscuringCharacter: '⚫',
            defaultPinTheme: controller.defaultPinTheme,
            focusedPinTheme: controller.focusedPinTheme,
            // submittedPinTheme: controller.submittedPinTheme,
            length: 4,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            showCursor: true,
          ),
          const SizedBox(
            height: 50,
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
                Get.toNamed(Routes.SET_YOUR_FINGERPRINT);
              },
              child: Text(
                "Continue",
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
