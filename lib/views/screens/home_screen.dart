import 'package:flutter/material.dart';
import '../../core/utils/sizes/sizes.dart';
import '../../core/utils/theme/colors.dart';
import '../../widgets/home_screen_body.dart';
import '../../widgets/home_screen_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlack,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const HomeScreenHeaders(),
            SizedBox(height: AppSizes.kSizesBox),
            const HomeScreenBody(),
          ],
        ),
      ),
    );
  }
}
