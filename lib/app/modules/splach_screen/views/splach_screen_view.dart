import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/splach_screen_controller.dart';

class SplachScreenView extends GetView<SplachScreenController> {
  const SplachScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 180,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images.png",
                  scale: 2.5,
                ),
                const SizedBox(
                  width: 17,
                ),
                Text(
                  "Medica",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 180,
            ),
            const SpinKitCircle(
              color: Colors.indigo,
            )
          ],
        ),
      ),
    );
  }
}
