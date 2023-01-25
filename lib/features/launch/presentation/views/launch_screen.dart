import 'package:flutter/material.dart';
import 'package:my_bookly/features/launch/presentation/views/widgets/launch_screen_body.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LaunchScreenBody(),
    );
  }
}
