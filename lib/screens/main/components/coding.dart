import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Aditional Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.99,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.50,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.99,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.80,
          label: "JavaScript",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.78,
          label: "React",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.95,
          label: "Java Swing",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.99,
          label: "SQL",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.99,
          label: "WordPress",
        ),
        
      ],
    );
  }
}
