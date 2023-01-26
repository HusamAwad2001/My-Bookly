import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/launch/presentation/views/widgets/sliding_text.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class LaunchScreenBody extends StatefulWidget {
  const LaunchScreenBody({Key? key}) : super(key: key);

  @override
  State<LaunchScreenBody> createState() => _LaunchScreenBodyState();
}

class _LaunchScreenBodyState extends State<LaunchScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 5),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 8),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(kTransitionDuration, () {
      // Get.off(() => const HomeScreen(), transition: Transition.fade);
      GoRouter.of(context).pushReplacement(AppRouter.kHomeScreen);
    });
  }
}
