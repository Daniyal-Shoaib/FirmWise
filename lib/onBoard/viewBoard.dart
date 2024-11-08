import 'package:farmWise/custom-widget/custom-Text.dart';
import 'package:farmWise/helper/app-colors.dart';
import 'package:farmWise/helper/images-path.dart';
import 'package:farmWise/model/view_board.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class ViewBoard extends StatefulWidget {
  const ViewBoard({super.key});

  @override
  State<ViewBoard> createState() => _ViewBoardState();
}

class _ViewBoardState extends State<ViewBoard> {
  List<OnBoard> onBoardingData = [
    OnBoard(
      ImagesPath.onBoard10,
      'Get Rid of Third\nPerson',
      'Using this application you can get\nrid of paying commission fee to\nthird person. Now you can directly\nchat with sellers and deal with\nthem.',
    ),
    OnBoard(
      ImagesPath.onBoard11,
      'Help in Market\nAnalysis',
      'You\'ll have all of the market\nanalysis in your pocket. You\'ll get\nto know the latest and Genuine\nMarket Rates of items.',
    ),
    OnBoard(
      ImagesPath.onBoard12,
      'Multilingual',
      'Easily register your store on the\nplatform and start selling your\nitems, or if you are a buyer search\nfor your desired items and\npurchase them directly.',
    ),
  ];

  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                itemCount: onBoardingData.length,
                onPageChanged: (index){
                  setState(() {
                    _currentIndex=index;
                  });
                },
                itemBuilder: (context,index){
                  return Stack(
                    children: [
                      Positioned(
                        top: 123,
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
                        top: 115,
                        left: 70,
                        child: Container(
                          width: 326,
                          height: 292,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(2, 2),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image(
                              image: AssetImage(
                                  onBoardingData[index].img,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    Positioned(
                      bottom: 90,
                      left:40,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: onBoardingData[index].title,
                              fontSize: 33,
                              fontWeight: FontWeight.w400,
                              color: AppColors.fullBlack,
                            ),
                            CustomText(
                              text: onBoardingData[index].discrption,
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                              color: AppColors.lightBlack,
                            ),
                          ],
                        ),
                      ),
                    ),

                  ]);
                }
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:List.generate(onBoardingData.length, (index){
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: _currentIndex == index ? Colors.green :Color(0xffD4D4D4B2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    })
                ),
              ),
             const  SizedBox(width: 60,),
              TextButton(
                  onPressed: (){},
                  child: const Text('Skip',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff339D44),
                  ),)
              ),
            ],
          ),

        const   SizedBox(height: 30),
        ],
      ),
    );
  }
}



