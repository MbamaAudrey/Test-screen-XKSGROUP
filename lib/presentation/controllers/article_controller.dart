import 'package:get/get.dart';
import '../../domain/entities/article.dart';
import '../../domain/repositories/get_articles.dart';

class ArticleController extends GetxController {
  final GetArticles getArticles;
  ArticleController({required this.getArticles});

  var articles = <Article>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    loadAll();
    super.onInit();
  }

  void loadAll() async {
    try {
      isLoading(true);
      final result = await getArticles();
      articles.assignAll(result);
    } finally {
      isLoading(false);
    }
  }
}
