import 'package:farmWise/custom-widget/custom-Text.dart';
import 'package:farmWise/custom-widget/custom_ebutton.dart';
import 'package:farmWise/helper/app-colors.dart';
import 'package:farmWise/onBoard/onBoard-10.dart';
import 'package:farmWise/onBoard/viewBoard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helper/images-path.dart';
import '../provider/auth_provider.dart';

class GettingStart extends StatefulWidget {
  const GettingStart({super.key});

  @override
  State<GettingStart> createState() => _GettingStartState();
}

class _GettingStartState extends State<GettingStart> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 2, right: 2, top: 33),
        child: Stack(
          children: [
            // Background Image
            Image(
              image: AssetImage(ImagesPath.getStart),
              fit: BoxFit.cover,
              height: screenHeight,
              width: screenWidth,
            ),
            // Gradient Overlay
            Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.green.withOpacity(0.2),
                    Colors.green.withOpacity(0.4),
                    Colors.green.withOpacity(0.6),
                    Colors.green.withOpacity(0.9),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            // Main Text "Hello Expert"
            const Positioned(
              top: 370,
              left: 105,
              child: CustomText(
                text: 'Hello Expert',
                color: Color(0xffFFFFFF),
                fontSize: 33,
                fontWeight: FontWeight.w700,
              ),
            ),
            // Additional Description Texts
            const Positioned(
              bottom: 350,
              left: 80,
              child: CustomText(
                text: 'Lorem ipsum dolor sit amet,',
                color: Colors.white70,
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Positioned(
              bottom: 320,
              left: 60,
              child: CustomText(
                text: 'consectetur adipiscing elit. Nec est',
                color: Colors.white70,
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Positioned(
              bottom: 290,
              left: 70,
              child: CustomText(
                text: 'sed a nullam vitae. Dis ut pulvinar',
                color: Colors.white70,
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Positioned(
              bottom: 260,
              left: 170,
              child: CustomText(
                text: 'cursus elit .',
                color: Colors.white70,
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
            // Centered "Get Started" Button
            Positioned(
              bottom: 140,
              left: (screenWidth - 315) / 2,  // Center the button horizontally
              child: SizedBox(
                width: 315,
                height: 59,
                child: CustomEButton(
                  text: 'Get Started',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ViewBoard(),
                      ),
                    );
                  },
                ),
              ),
            ),
            // "Switch To Urdu" Text
            const Positioned(
              bottom: 54,
              left: 115,
              child: CustomText(
                text: 'Switch To Urdu',
                color: AppColors.whiteColor,
                fontSize: 15,
              ),
            ),
            // Switch Widget aligned with Text
            Positioned(
              bottom: 42,
              left: 240,
              child: Consumer<AuthProvider>(
                builder: (ctx, authProvider, child) {
                  return Switch.adaptive(
                    value: authProvider.isToggled,
                    onChanged: (value) {
                      authProvider.toggleSwitch();
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.white,
                    inactiveThumbColor: Colors.green,
                    inactiveTrackColor: Colors.white,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
