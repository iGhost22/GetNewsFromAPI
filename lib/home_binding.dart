import 'package:get/get.dart';
import 'package:getx_learn_continue/controller/home_controller.dart';
import 'package:getx_learn_continue/controller/second_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => SecondController(), fenix: true);
  }
}
