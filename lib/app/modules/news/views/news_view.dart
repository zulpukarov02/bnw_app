import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_1/app/routes/app_pages.dart';
import 'package:step_1/app/theme/app_colors.dart';
import 'package:step_1/app/utils/card_news.dart';
import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ctl = controller;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primari,
        title: const Text('NewsView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () async {
                await Get.toNamed(AppPages.Weather);
              },
              icon: const Icon(
                Icons.wb_cloudy_sharp,
                size: 31,
              ))
        ],
      ),
      body: Center(
        child: Obx(
          () {
            if (ctl.news.value != null) {
              final news = ctl.news.value!;
              return ListView.builder(
                itemCount: news.articles.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardNews(news: news.articles[index]);
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
