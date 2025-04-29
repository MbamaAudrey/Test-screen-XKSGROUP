import '../entities/article.dart';
import '../repositories/article_repository.dart';

class GetArticles {
  final ArticleRepository repository;
  GetArticles(this.repository);

  Future<List<Article>> call() => repository.fetchArticles();
}