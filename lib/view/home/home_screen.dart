import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:product_feature/res/constants.dart';
import 'package:product_feature/res/size_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double opacity = 1 - 20.5.abs().clamp(0, 1);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [iconColor, textColor])),
        height: displayHeight(context),
        width: displayWidth(context),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Stack(
            children: [
              Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "AirPods Max",
                    style: titleText(320, bgColor),
                  ),
                ),
              ),
              FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  child: Center(child: Image.asset("assets/airpods_grey.png")))
            ],
          ),
        ),
      ),
    );
  }
}
