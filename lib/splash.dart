import 'package:flutter/material.dart';
import 'package:sna3ya_user/language.dart';

//imports
import 'package:splashscreen/splashscreen.dart' as prefix0;
class SplashScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return prefix0.SplashScreen(
      imageBackground: Image.asset('./images/splash.png').image,
      seconds: 10,
      navigateAfterSeconds: Language(),
      onClick: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Language(),
        ),
      ),
      loaderColor: Colors.red,
    );
  }
}
