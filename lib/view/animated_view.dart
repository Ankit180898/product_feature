import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:product_feature/view/home/components/custom_buton.dart';

import '../res/constants.dart';
import 'package:product_feature/res/size_helpers.dart';

class AnimatedPageItem extends StatelessWidget {
  final int index;
  final String image;
  final String title;
  final String description;
  final PageController pageController;
  final Gradient? gradients;

  const AnimatedPageItem({
    required this.index,
    required this.image,
    required this.title,
    required this.description,
    required this.pageController,
    this.gradients,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        final int currentPage = index;
        final double offset =
            (currentPage - index) * MediaQuery.of(context).size.width;
        final double opacity = 1 - offset.abs().clamp(0, 1);

        return Opacity(
          opacity: opacity,
          child: Transform.translate(
            offset: Offset(0, offset),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                decoration: BoxDecoration(
                  gradient: gradients ??
                      const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [iconColor, textColor],
                      ),
                ),
                height: displayHeight(context),
                width: displayWidth(context),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: FadeInLeftBig(
                          animate: true,
                          curve: Curves.easeInOut,
                          duration: Duration(milliseconds: 4000),
                          child: Center(
                            child: Image.asset(image),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FadeInUp(
                              animate: true,
                              curve: Curves.easeInOut,
                              duration: Duration(milliseconds: 2000),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  title,
                                  style: titleText(80, textColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            FadeInUp(
                                animate: true,
                                curve: Curves.easeInOut,
                                duration: Duration(milliseconds: 3000),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    maxLines: 3,
                                    description,
                                    style: salutationTextStyle(16, textColor),
                                  ),
                                )),
                            const SizedBox(
                              height: 16,
                            ),
                            FadeInUp(
                                animate: true,
                                curve: Curves.easeInOut,
                                duration: Duration(milliseconds: 4000),
                                child: CustomButton(
                                    text: "Explore",
                                    onPressed: () {},
                                    color: textColor,
                                    height: 50,
                                    width: 100,
                                    textSize: 16,
                                    borderRadius: 24,
                                    textColor: bgColor))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
