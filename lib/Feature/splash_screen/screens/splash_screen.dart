import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_app/Core/routes/app_route.dart';
import 'package:to_do_app/Core/utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigation();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(AppAssets.appLogo),
              )
            ],
          ),
        ),
      ),
    );
  }

  void navigation() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
    });
  }
}
