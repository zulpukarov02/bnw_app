import 'package:dio/dio.dart';
import 'package:step_1/app/constants/api_const.dart';
import 'package:step_1/app/models/news_model.dart';

class NewsRepo {
  //dio je http menen AppConst.newsApi  ge baryp data alyp kelyy
  //kelgen datany News modeline modeldep beruu
  final dio = Dio();
  Future<News?> getNews() async {
    final response = await dio.get(ApiConst.newsApi);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final news = News.fromJson(response.data);
      return news;
    } else {
      return null;
    }
  }
}
