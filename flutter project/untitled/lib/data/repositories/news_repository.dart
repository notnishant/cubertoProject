import '../models/news_model.dart';
import '../providers/news_api_provider.dart';

class NewsRepository {
  final NewsApiProvider newsApiProvider = NewsApiProvider();

  Future<List<NewsArticle>> fetchNews(String apiKey, String query)  {
    return  newsApiProvider.fetchNews(apiKey, query);
  }

  Future<List<NewsArticle>> fetchHeadlines(
      String apiKey, String country)  {
    return  newsApiProvider.fetchHeadlines(apiKey, country);
  }
}
