import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/common/widget/app_button.dart';
import 'package:flutter_getx_playground/page/isolate/isolate_controller.dart';
import 'package:get/get.dart';

class IsolatePage extends GetView<IsolateController> {
  const IsolatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final number = controller.number.value;

      return Scaffold(
          appBar: AppBar(
            title: const Text('Isolate'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  onPressed: () {
                    controller.onClickIsolate();
                  },
                  text: 'isolate',
                ),
                const SizedBox(width: 16),
                AppButton(
                  onPressed: () {
                    controller.onClickNonIsolate();
                  },
                  text: 'non isolate',
                ),
                AppButton(
                  onPressed: () {
                    controller.onClickReset();
                  },
                  text: 'reset',
                ),
                const SizedBox(height: 48),
                Text(
                  '$number',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 48),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: CircularProgressIndicator(),
                  ),
                ),
                const SizedBox(height: 8.0),
              ],
            ),
          ));
    });
  }
}
