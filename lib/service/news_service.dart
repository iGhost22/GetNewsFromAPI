import 'package:get/get.dart';
import 'package:getx_learn_continue/model/news_model.dart';

class NewsService extends GetConnect implements GetxService {
  Future<NewsApi> getNewsData() async {
    var response = await get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=a758522e6c0e42dfb7ccac62d2ec16e0");
    print(response.body);

    return NewsApi.fromJson(response.body);
  }

  void postData() {
    post("url", {});
  }

  void putData() {
    put("url", {});
  }

  void deleteData() {
    delete("url");
  }
}
