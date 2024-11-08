import 'package:flutter/material.dart';

class MyPractice extends StatelessWidget {
  const MyPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
           child: Padding(
              padding: EdgeInsets.only(left: 50),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 300,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.blue,
                      //image: "assets"
                    ),
                    child: Image(
                      image: AssetImage("assets/images/market.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 330,
                    child: Transform.rotate(
                      angle: 0.03,
                      child: Container(
                        width: 400,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 15,
                              color: Color(0XFF339D44).withOpacity(0.5),
                              // blurRadius: 7,
                              // offset: Offset(60, 20)
                              offset: Offset(45, 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
            ),

      ),
    );
  }
}
