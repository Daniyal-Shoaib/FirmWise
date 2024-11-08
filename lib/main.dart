import 'package:farmWise/provider/auth_provider.dart';
import 'package:farmWise/splash-screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const FarmWise());
}
class FarmWise extends StatelessWidget {
  const FarmWise({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:  [
        ChangeNotifierProvider(
            create: (_)=>AuthProvider(),

        )
        ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),

    );
  }
}
