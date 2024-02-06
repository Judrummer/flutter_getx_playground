import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/app_controller.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      initState: (_) => Get.find<AppController>().initialize(),
      builder: (_) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
