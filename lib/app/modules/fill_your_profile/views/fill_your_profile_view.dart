import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../routes/app_pages.dart';
import '../controllers/fill_your_profile_controller.dart';

class FillYourProfileView extends GetView<FillYourProfileController> {
  const FillYourProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: controller.globalKey,
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
                      "Fill Your Profile",
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
                Obx(
                  () => SizedBox(
                    height: 180,
                    width: 180,
                    child: Stack(
                      children: [
                        controller.image == null
                            ? ClipOval(
                                child: Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    // borderRadius: BorderRadius.circular(150),
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.solidUser,
                                    size: 90,
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                              )
                            : ClipOval(
                                child: Image.file(
                                  controller.image!,
                                  height: 160,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                              ),
                        Positioned(
                          top: 120,
                          left: 110,
                          child: InkWell(
                            onTap: () {
                              Get.bottomSheet(
                                Container(
                                  child: Wrap(
                                    children: <Widget>[
                                      ListTile(
                                        leading: const Icon(Icons.image),
                                        title: const Text('Gellery'),
                                        onTap: () {
                                          controller
                                              .pickImage(ImageSource.gallery);
                                          Get.back();
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(Icons.camera),
                                        title: const Text('Camera'),
                                        onTap: () {
                                          controller
                                              .pickImage(ImageSource.camera);
                                          Get.back();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                backgroundColor: Colors.white,
                              );
                            },
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(150),
                                ),
                                child: const Icon(Icons.edit)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: controller.nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a Full Name!!";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    hintStyle: GoogleFonts.urbanist(),
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
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: controller.nickNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a Nickname!!";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Nickname",
                    hintStyle: GoogleFonts.urbanist(),
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
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: controller.dateController,
                  keyboardType: TextInputType.none,
                  onTap: controller.datePicker,
                  decoration: InputDecoration(
                    hintText: "Date of Birth",
                    hintStyle: GoogleFonts.urbanist(),
                    suffixIcon: const Icon(Icons.calendar_month),
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
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: controller.mobileController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter a Mobile Number";
                    } else if (value.length != 10) {
                      return "Enter valid Mobile Number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "mobile number",
                    suffixIcon: const Icon(Icons.call),
                    hintStyle: GoogleFonts.urbanist(),
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
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    hintText: "Gender",
                    hintStyle: GoogleFonts.urbanist(),
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
                  ),
                  items: controller.gender
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 25,
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
                      if (controller.globalKey.currentState!.validate()) {
                      controller.storeUserData();
                      }
                      // Get.toNamed(Routes.CREATE_PIN);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
