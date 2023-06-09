import 'package:get/get.dart';
import 'package:step_1/app/models/news_model.dart';
import 'package:step_1/app/repositories/onews_repo.dart';

class NewsController extends GetxController {
  final newsRepo = NewsRepo();
  Rx<News?> news = Rxn<News>();
  final count = 0.obs;
  Future<void> getNews() async {
    news.value = await newsRepo.getNews();
  }

  @override
  void onInit() async {
    super.onInit();
    getNews();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
