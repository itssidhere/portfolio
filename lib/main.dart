import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
            home: const Homepage(),
          );
        });
  }
}
