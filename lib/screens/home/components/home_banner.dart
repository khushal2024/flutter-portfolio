import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/screens/main/main_screen.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Confiti();
  }
}

class Confiti extends StatefulWidget {
  const Confiti({super.key});

  @override
  State<Confiti> createState() => _ConfitiState();
}

class _ConfitiState extends State<Confiti> {
  final controller = ConfettiController();
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/bg.jpg",
              fit: BoxFit.fill,
            ),
            Container(
              color: darkColor.withOpacity(0.66),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Center(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Welcome to my \n\t  Tech Space!",
                          style: Responsive.isDesktop(context)
                              ? Theme.of(context).textTheme.headline3!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )
                              : Theme.of(context).textTheme.headline5!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      if (Responsive.isMobileLarge(context))
                        const SizedBox(height: defaultPadding / 2),
                      const Center(child: MyBuildAnimatedText()),
                      const SizedBox(height: defaultPadding),
                    ],
                  ),
                ),
              ),
            ),
            ConfettiWidget(
              confettiController: controller,
              shouldLoop: true,
              blastDirectionality: BlastDirectionality.explosive,
              emissionFrequency: 0.04,
              maxBlastForce: 10,
              gravity: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyle(
        // it applies same style to all the widgets under it
        style: Theme.of(context).textTheme.subtitle1!,
        maxLines: 1,
        child: Center(
          child: Row(
            children: [
              if (!Responsive.isMobileLarge(context))
                const Center(child: FlutterCodedText()),
              if (!Responsive.isMobileLarge(context))
                const SizedBox(width: defaultPadding / 2),
              const Center(
                  child: Text(
                "->   ",
                style: TextStyle(color: primaryColor),
              )),
              Responsive.isMobile(context)
                  ? const Expanded(child: AnimatedText())
                  : const Center(child: AnimatedText()),
              if (!Responsive.isMobileLarge(context))
                const SizedBox(width: defaultPadding / 2),
              if (!Responsive.isMobileLarge(context))
                const Center(child: FlutterCodedText()),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText(
            "I'm FullStack Developer.",
            textStyle: const TextStyle(color: primaryColor),
            speed: const Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            "I'm FullStack Developer.",
            textStyle: const TextStyle(color: primaryColor),
            speed: const Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            "I'm FullStack Developer.",
            textStyle: const TextStyle(color: primaryColor),
            speed: const Duration(milliseconds: 60),
          ),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text.rich(
        TextSpan(
          text: '',
          children: [
            TextSpan(
              text: "",
              style: TextStyle(color: primaryColor),
            ),
            TextSpan(text: ""),
          ],
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Row(
            children: [
              const SizedBox(
                width: 3,
              ),
              Container(
                child: const Center(
                    child: Text(
                  'Websites Development',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: primaryColor, width: 2)),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: const Center(
                    child: Text(
                  'Mobile Apps Development',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: primaryColor, width: 2)),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: const Center(
                    child: Text(
                  'Graphics Designing',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                )),
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: primaryColor, width: 2)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
