
import 'package:flutter/material.dart';
import 'custom-widget/custom-Text.dart';
import 'helper/app-colors.dart';
import 'helper/images-path.dart';
import 'onBoard/getting-start.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>const GettingStart(),
          ),
      );
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Column(

                children: [
                  Image(
                    image: AssetImage(ImagesPath.splashImage),
                    width: 71,
                    height: 69,
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Agri',
                        color: AppColors.greenColor,
                      ),
                      CustomText(
                        text: 'Expert',
                        color: AppColors.fullBlack,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),


          const Spacer(),


          const Padding(
            padding: EdgeInsets.only(bottom: 10), // Padding can be adjusted as needed
            child: CustomText(
              text: 'Powered by',
              fontSize: 16,
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(ImagesPath.farmLogo),
                width: 23,
                height: 22,
              ),
              const SizedBox(width: 10),
              const CustomText(
                text: 'FARM TECH',
                fontSize: 18,
                color: AppColors.limeBlack,
              ),
            ],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
