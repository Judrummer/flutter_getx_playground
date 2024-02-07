import 'package:flutter_getx_playground/app_router.dart';
import 'package:get/get.dart';

abstract class BaseController extends GetxController {
  final AppRouter appRouter = Get.find();
}
