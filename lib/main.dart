import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soft_web/core/routes/route_locations.dart';
import 'package:soft_web/core/theme/app_theme.dart';
import 'package:soft_web/features/authentication/presentation/screens/create_account.dart';
import 'package:soft_web/features/authentication/presentation/screens/login_screen.dart';
import 'package:soft_web/features/authentication/presentation/screens/verify_email.dart';
import 'package:soft_web/features/home/presentation/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MaterialApp(
          title: 'Soft Web',
          theme: AppTheme.appTheme,
          darkTheme: AppTheme.appTheme,
          initialRoute: RouteLocations.login,
          routes: {
            RouteLocations.login: (context) => const LoginScreen(),
            RouteLocations.createAccount: (context) => const CreateAccountScreen(),
            RouteLocations.verifyEmail: (context) => const VerifyEmailScreen(),
            RouteLocations.home: (context) => const HomeScreen(),
          },
        );
      },
    );

  }
}
