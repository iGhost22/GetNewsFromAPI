import 'package:get/get.dart';

class SecondController extends GetxController {
  RxInt index = 0.obs;
  String name = '';

  void displayName() {
    name = 'John Doe';
    update();
  }

  @override
  void onInit() {
    // when you open the screen, the name will be displayed
    print('On Init 2');
    super.onInit();
  }

  @override
  void onReady() {
    // when the controller is created
    print('On Ready 2');
    super.onReady();
  }

  @override
  void onClose() {
    // when you clode your controller
    print('On Close 2');
    super.onClose();
  }
}
