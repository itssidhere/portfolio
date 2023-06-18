import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SidLogo extends StatelessWidget {
  final double? scale;
  const SidLogo({
    super.key,
    this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale ?? 1,
      child: Hero(
        tag: 'logo',
        child: SizedBox(
          height: 100,
          child: Stack(
            children: [
              Image.asset(
                'images/logo-bg.png',
                color: Get.theme.colorScheme.primary,
                height: 100,
              ),
              Positioned(
                bottom: 25.0,
                left: 38.0,
                child: AutoSizeText('SJ',
                    style: TextStyle(
                        color: Get.theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 4.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
