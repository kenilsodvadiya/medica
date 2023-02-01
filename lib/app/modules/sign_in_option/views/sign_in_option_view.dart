import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../controllers/sign_in_option_controller.dart';

class SignInOptionView extends GetView<SignInOptionController> {
  const SignInOptionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SvgPicture.asset(
            "assets/welcome.svg",
            height: 225,
            // fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Let's you in",
              style: GoogleFonts.urbanist(
                textStyle: const TextStyle(fontSize: 35, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 65,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const SizedBox(
                      width: 1,
                    ),
                    Image.asset(
                      "assets/fb.png",
                      scale: 3.5,
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Text(
                      "Continue with Facebook",
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
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
            height: 65,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/google_logo.png",
                      scale: 65,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Continue with Google",
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
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
            height: 65,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/apple.png",
                      scale: 4,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue with Apple",
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white.withOpacity(0.08),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
              Text(
                "or",
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
              Expanded(
                child: Container(
                  height: 3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white.withOpacity(0.08),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.SIGN_UP);
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.indigo,
              ),
              child: Text(
                "Sign in with password",
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.urbanist(
                    textStyle:
                        const TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.urbanist(
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.indigo),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
