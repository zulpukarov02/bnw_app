class ApiConst {
  static const String newsApi =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=97604a4cfe784fc7a9ae242ac28b2c87";
  static const String weatherApi =
      'https://api.openweathermap.org/data/2.5/weather?q=Osh,&appid=41aa18abb8974c0ea27098038f6feb1b';
  static String getIcon(String? iconCode, int size) {
    return 'https://openweathermap.org/img/wn/$iconCode@${size}x.png';
  }

  static const String defaultImege =
      "https://www.hessequa.gov.za/wp-content/uploads/2021/03/Marketplace-Lending-News.jpg";
}
