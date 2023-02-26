import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/set_your_fingerprint_controller.dart';

class SetYourFingerprintView extends GetView<SetYourFingerprintController> {
  const SetYourFingerprintView({Key? key}) : super(key: key);
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
                "Set Your Fingrprint",
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
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Add a fingerprint to make your account more secure",
              style: GoogleFonts.urbanist(
                textStyle: const TextStyle(
                  fontSize: 18,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () async {
              controller.isAuthentication = await LocalAuth.authenticate();
              final biometric = await LocalAuth.getBiometrics();
              if (controller.isAuthentication) {
                Fluttertoast.showToast(
                  msg: "Success",
                );
              }
            },
            child: const Icon(
              Icons.fingerprint_outlined,
              size: 350,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Please put your finger on the fingerprint scanner to get started",
              style: GoogleFonts.urbanist(
                textStyle: const TextStyle(
                  fontSize: 18,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        if (controller.isAuthentication) {}
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.indigo.shade100,
                      ),
                      child: Text(
                        "Skip",
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
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
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
