import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../routes/app_pages.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: 3,
              itemBuilder: (context, index) {
                return controller.pageList[index];
              },
            ),
          ),
          SmoothPageIndicator(
            controller: controller.pageController,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotHeight: 12,
              dotWidth: 12,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  controller.currentIndex++;
                  if (controller.currentIndex != 3) {
                    controller.pageController.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.linear,
                    );
                  } else {
                    Get.toNamed(Routes.SIGN_IN_OPTION);
                    controller.currentIndex--;
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.indigo,
                ),
                child: Text(
                  "Next",
                  style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
        ],
      ),
    );
  }
}

class TextOne extends StatelessWidget {
  const TextOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              "assets/doctor1.svg",
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Text(
                "Thousands of doctors & experts to help your health!",
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextTwo extends StatelessWidget {
  const TextTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              "assets/doctor2.svg",
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Text(
                "Health checks & consultations easily anywhere anytime",
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextThree extends StatelessWidget {
  const TextThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              "assets/doctor3.svg",
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Text(
                "Let's start living healthy and well with us right now!",
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
