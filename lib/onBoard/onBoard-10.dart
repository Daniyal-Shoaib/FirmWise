import 'package:farmWise/custom-widget/custom-Text.dart';
import 'package:farmWise/helper/app-colors.dart';
import 'package:farmWise/helper/images-path.dart';
import 'package:flutter/material.dart';
class OnboardTen extends StatelessWidget {
  const OnboardTen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [

          Positioned(
            top: 158,
            left: 120,
            child: Transform.rotate(
              angle: 0.05,
              child: Container(
                width: 390,
                height: 315,
                decoration: BoxDecoration(
                  color: const Color(0xFFDFF0DB),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),

          Positioned(
            top: 150,
            left: 65,
            child: Container(
              width: 329,
              height: 292,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image(
                  image: AssetImage(
                    ImagesPath.onBoard10,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        const Positioned(
              left: 45,
              bottom: 240,
              child: CustomText(
                  text: 'Get Rid of Third\nPerson',
                fontSize: 33,
                fontWeight: FontWeight.w700,
                color: AppColors.fullBlack,
              )
          ),
           const Positioned(
              left: 45,
              bottom: 90,
              child: CustomText(
                  text: 'Using this application you can get\nrid of paying commission fee to\nthird person. Now you can directly\nchat with sellers and deal with\nthem.',
                fontSize: 19,
                fontWeight: FontWeight.w400,
                color: Color(0xffB4B4B4),
              )
          ),
          // Positioned(
          //     child: CarouselSlider.builder(
          //         itemCount: 3,
          //         itemBuilder: itemBuilder,
          //         options: options
          //     )
          // ),
        ],
      ),
    );
  }
}
