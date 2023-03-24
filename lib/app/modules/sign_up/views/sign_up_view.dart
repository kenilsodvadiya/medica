import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Form(
            key: controller.key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image.asset(
                    "assets/medicallogo-removebg-preview.png",
                    scale: 1.2,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Create New Account",
                    style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.emailController,
                  validator: (value) {
                    final bool emailValid = RegExp(
                            r"^[a-z0-9.a-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-z0-9]+\.[a-z]+")
                        .hasMatch(value ?? '');
                    if (value == null || value.isEmpty) {
                      return "Please Enter a email address";
                    } else if (!emailValid) {
                      return "Enter a valid email address";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email_rounded,
                      color: Colors.grey,
                    ),
                    hintText: "Email",
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
                    hintStyle: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(() => TextFormField(
                      controller: controller.passwordController,
                      obscureText: controller.visibility,
                      validator: (value) {
                        bool hasCapital =
                            RegExp(r"[A-Z]").hasMatch(value ?? '');
                        bool hasSmall = RegExp(r"[a-z]").hasMatch(value ?? '');
                        bool hasNamber = RegExp(r"[0-9]").hasMatch(value ?? '');
                        if (value == null || value.isEmpty) {
                          return "Please enter a Storng password";
                        } else if (!hasCapital) {
                          return "contain at least one upper case";
                        } else if (!hasNamber) {
                          return "contain at least one digit";
                        } else if (!hasSmall) {
                          return "contain at least one lower case";
                        } else if (value.length < 8) {
                          return "Must be at least 8 characters in length";
                        }

                        return null;
                      },
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
                        suffixIcon: Obx(() => IconButton(
                              onPressed: () {
                                controller.visibility = !controller.visibility;
                              },
                              icon: controller.visibility
                                  ? const Icon(
                                      Icons.visibility,
                                      color: Colors.grey,
                                    )
                                  : const Icon(
                                      Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                            )),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => Checkbox(
                          value: controller.isChecked,
                          activeColor: Colors.indigo,
                          onChanged: (value) {
                            controller.isChecked = value!;
                          }),
                    ),
                    Text(
                      "Remember me",
                      style: GoogleFonts.urbanist(
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
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
                        if (controller.key.currentState!.validate()) {
                          controller.userSignUp();
                        }
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                        margin: const EdgeInsets.only(right: 20),
                      ),
                    ),
                    Text(
                      "or continue with",
                      style: GoogleFonts.urbanist(
                        textStyle:
                            const TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                        margin: const EdgeInsets.only(left: 25),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/fb.png",
                          scale: 3.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/google_logo.png",
                          scale: 65,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/apple.png",
                          scale: 4,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                              fontSize: 15, color: Colors.black),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.SIGN_IN);
                          },
                          child: Text(
                            "Sign in",
                            style: GoogleFonts.urbanist(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
