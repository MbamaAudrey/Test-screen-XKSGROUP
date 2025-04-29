// lib/data/repositories/article_repository_impl.dart
import '../../domain/entities/article.dart';
import '../../domain/repositories/article_repository.dart';
import '../datasources/article_local_data_source.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleLocalDataSource localDataSource;
  ArticleRepositoryImpl({required this.localDataSource});

  @override
  Future<List<Article>> fetchArticles() {
    return localDataSource.getArticles();
  }
}
