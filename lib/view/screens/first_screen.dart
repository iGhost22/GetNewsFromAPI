import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_continue/controller/home_controller.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          print("Here out print ${controller.newsApi}");

          if (controller.newsApi != null) {
            return ListView.builder(
              itemCount: controller.newsApi!.articles.length,
              itemBuilder: (context, index) => SizedBox(
                height: 220,
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: NetworkImage(
                            controller.newsApi!.articles[index].urlToImage
                                .toString(),
                          ),
                          fit: BoxFit.cover,
                          // height: double.infinity,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              controller.newsApi!.articles[index].author
                                  .toString(),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              controller.newsApi!.articles[index].title
                                  .toString(),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              controller.newsApi!.articles[index].description
                                  .toString(),
                              style: Theme.of(context).textTheme.bodySmall,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
