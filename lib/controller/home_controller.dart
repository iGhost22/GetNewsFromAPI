import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_learn_continue/model/news_model.dart';
import 'package:getx_learn_continue/service/news_service.dart';

class HomeController extends GetxController {
  RxInt index = 0.obs;
  String name = '';

  GetStorage box = GetStorage();

  void displayName() {
    name = 'John Doe';
    // here to save the data
    box.write('name', name);
    update();
  }

  void getTheSaveName() {
    // here to get the data
    String name = box.read('name') ?? "deleted";
    print(name);
    update();
  }

  @override
  void onInit() {
    getNewsData();
    
    // when you open the screen, the name will be displayed
    print('On Init');
    super.onInit();
  }

  NewsApi? newsApi;

  void getNewsData() async {
    newsApi = await NewsService().getNewsData();
    update();
    // set State
  }

  @override
  void onReady() {
    // when the controller is created
    print('On Ready');
    super.onReady();
  }

  @override
  void onClose() {
    // when you clode your controller
    print('On Close');
    super.onClose();
  }

  void deleteSavedName() {
    box.remove('name');
    print("It's removed");
    update();
  }
}
