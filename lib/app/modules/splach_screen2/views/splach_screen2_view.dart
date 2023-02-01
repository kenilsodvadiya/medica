import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splach_screen2_controller.dart';

class SplachScreen2View extends GetView<SplachScreen2Controller> {
  const SplachScreen2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 230,
          ),
          Image.asset("assets/image1.jpg"),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.WELCOME);
            },
            child: Text(
              "Welcome to\n  Medica!👋",
              style: GoogleFonts.urbanist(
                fontSize: 50,
                color: Colors.blue.shade600,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "   The best online doctor appointment & consultation app of the century for your\n            health and medical needs!",
              style: GoogleFonts.urbanist(
                fontSize: 18,
                color: Colors.black45,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
