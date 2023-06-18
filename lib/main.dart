import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/helper/sid_logo.dart';
import 'package:portfolio/homepage.dart';

isMobile() => 1.sw < 900;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var shouldShowSplash = true.obs;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2300), () {
      shouldShowSplash.value = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        builder: (c, w) {
          return GetMaterialApp(
            theme: FlexThemeData.light(
              scheme: FlexScheme.bahamaBlue,
              surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
              blendLevel: 9,
              subThemesData: const FlexSubThemesData(
                blendOnLevel: 10,
                blendOnColors: false,
              ),
              visualDensity: FlexColorScheme.comfortablePlatformDensity,
              useMaterial3: true,
              swapLegacyOnMaterial3: true,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            darkTheme: FlexThemeData.dark(
              scheme: FlexScheme.bahamaBlue,
              surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
              blendLevel: 15,
              subThemesData: const FlexSubThemesData(
                blendOnLevel: 20,
              ),
              visualDensity: FlexColorScheme.comfortablePlatformDensity,
              useMaterial3: true,
              swapLegacyOnMaterial3: true,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            themeMode: ThemeMode.dark,
            home: Obx(() {
              if (shouldShowSplash.value) {
                return const SplashScreen();
              } else {
                return const Homepage();
              }
            }),
          );
        });
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SidLogo(
          scale: 3,
        )
            .animate()
            .scaleX(
                delay: const Duration(milliseconds: 850),
                duration: const Duration(seconds: 1),
                begin: 1,
                end: 0.3)
            .scaleY(begin: 1, end: 0.3)
            .moveX(
              delay: const Duration(milliseconds: 850),
              duration: const Duration(seconds: 1),
              begin: 0,
              end: isMobile() ? 0 : -(0.5.sw - 70),
            )
            .moveY(
              delay: const Duration(milliseconds: 850),
              duration: const Duration(seconds: 1),
              begin: 0,
              end: -(0.5.sh - kToolbarHeight + 20),
            )
            .fadeOut(begin: 1),
      ),
    );
  }
}
