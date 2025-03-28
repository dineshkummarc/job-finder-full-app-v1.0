/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : JobFinder Flutter Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class MyElevatedButton extends StatelessWidget {
  final double height;
  final double width;

  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget text;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.height,
    required this.width,
    this.gradient = const LinearGradient(colors: [appColor, appColor2]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shadowColor: appColor,
              onPrimary: Colors.white,
              elevation: 0,
              shape: (RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
              padding: const EdgeInsets.all(0)),
          child: text),
    );
  }
}
