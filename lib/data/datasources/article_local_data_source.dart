import '../models/article_model.dart';

abstract class ArticleLocalDataSource {
  Future<List<ArticleModel>> getArticles();
}

class ArticleLocalDataSourceImpl implements ArticleLocalDataSource {
  @override
  Future<List<ArticleModel>> getArticles() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      ArticleModel(
        id: '1',
        title: 'Flutter 3.0 est sorti',
        content: 'Découvrez les nouveautés de Flutter 3.0...',
        imageUrl: 'assets/images/articleune.jpg',
        author: 'Alice',
        publishedAt: DateTime.parse('2025-04-28'),
        tags: ['Flutter', 'Release'],
        likes: 42,
        views: 128,
      ),

      ArticleModel(
        id: '1',
        title: 'Flutter 3.0 est sorti',
        content: 'Découvrez les nouveautés de Flutter 3.0...',
        imageUrl: 'assets/images/imgdeux.jpg',
        author: 'Alice',
        publishedAt: DateTime.parse('2025-04-28'),
        tags: ['Flutter', 'Release'],
        likes: 42,
        views: 128,
      ),

      ArticleModel(
        id: '1',
        title: 'Flutter 3.0 est sorti',
        content: 'Découvrez les nouveautés de Flutter 3.0...',
        imageUrl: 'assets/images/imgtrois.jpg',
        author: 'Alice',
        publishedAt: DateTime.parse('2025-04-28'),
        tags: ['Flutter', 'Release'],
        likes: 42,
        views: 128,
      ),

      ArticleModel(
        id: '1',
        title: 'Flutter 3.0 est sorti',
        content: 'Découvrez les nouveautés de Flutter 3.0...',
        imageUrl: 'assets/images/imgquatre.jpg',
        author: 'Alice',
        publishedAt: DateTime.parse('2025-04-28'),
        tags: ['Flutter', 'Release'],
        likes: 42,
        views: 128,
      ),
      ArticleModel(
        id: '1',
        title: 'Flutter 3.0 est sorti',
        content: 'Découvrez les nouveautés de Flutter 3.0...',
        imageUrl: 'assets/images/imgcinq.jpg',
        author: 'Alice',
        publishedAt: DateTime.parse('2025-04-28'),
        tags: ['Flutter', 'Release'],
        likes: 42,
        views: 128,
      ),
      ArticleModel(
        id: '1',
        title: 'Flutter 3.0 est sorti',
        content: 'Découvrez les nouveautés de Flutter 3.0...',
        imageUrl: 'assets/images/imgsix.jpg',
        author: 'Alice',
        publishedAt: DateTime.parse('2025-04-28'),
        tags: ['Flutter', 'Release'],
        likes: 42,
        views: 128,
      ),
      // ajoute d’autres articles ici…
    ];
  }
}
