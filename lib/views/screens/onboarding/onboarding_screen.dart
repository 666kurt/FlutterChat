import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../components/components.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Spacer(),
            Center(
              child: Image.asset(
                "assets/onboarding_image.png",
                width: MediaQuery.sizeOf(context).width * 0.7,
              ),
            ),
            SizedBox(height: 40),
            Text(
              Strings.onboardingTitle,
              style: Styles.titleStyle,
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 2),
            Text(
              Strings.onboardingSubtitle,
              style: Styles.subtitleStyle,
              textAlign: TextAlign.center,
            ),
            PrimaryButton(
              text: "Начать общаться",
              action: () {
                // Переход на экран контактов
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => CustomTabBar()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
