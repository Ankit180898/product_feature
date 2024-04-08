import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:product_feature/res/constants.dart';
import 'package:product_feature/view/animated_view.dart';
import 'package:product_feature/view/home/home_screen.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  var controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: controller,
      physics: CustomScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        const HomeScreen(),
        AnimatedPageItem(
          index: 1,
          image: "assets/side_grey.png",
          title: "A radically\noriginal\ncomposition",
          description:
              "The over-ear headphone has been completely reimagined. From cushion to canopy,\nAirPods Max are designed for an uncompromising fit that creates the optimal \nacoustic seal for many different head shapes — \nfully immersing you in every sound.",
          pageController: controller,
        ),
        AnimatedPageItem(
          index: 2,
          gradients: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [bgColorDevice, bgColorDevice.withOpacity(0.5)]),
          image: "assets/airpods_green.png",
          title: "Sounds like\nan epiphany.",
          description:
              "AirPods Max combine high-fidelity audio with industry-leading Active Noise Cancellation \nto deliver an unparalleled listening experience. Each part of their custom-built driver works to \nproduce sound with ultra-low distortion across the audible range. \nFrom deep, rich bass to accurate mids and crisp, \nclean highs, you’ll hear every note with a new sense of clarity.",
          pageController: controller,
        ),
      ],
    ));
  }
}

class CustomScrollPhysics extends ScrollPhysics {
  const CustomScrollPhysics({ScrollPhysics? parent}) : super(parent: parent);

  @override
  SpringDescription get spring => const SpringDescription(
        mass: 30,
        stiffness: 0,
        damping: 0.7,
      );

  @override
  CustomScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomScrollPhysics(parent: buildParent(ancestor));
  }
}
