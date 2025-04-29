import 'package:get_it/get_it.dart';

import '../data/datasources/article_local_data_source.dart';
import '../data/repositories/article_repository_impl.dart';
import '../domain/repositories/article_repository.dart';     // <-- bien importer l'interface
import '../domain/repositories/get_articles.dart';
import '../presentation/controllers/article_controller.dart';

final sl = GetIt.instance;

void init() {
  // 1) Data source
  sl.registerLazySingleton<ArticleLocalDataSource>(
        () => ArticleLocalDataSourceImpl(),
  );

  // 2) Repository (sous le type ArticleRepository !
  sl.registerLazySingleton<ArticleRepository>(
        () => ArticleRepositoryImpl(localDataSource: sl()),
  );

  // 3) Use case
  sl.registerLazySingleton<GetArticles>(
        () => GetArticles(sl()),  // sl() renverra un ArticleRepository
  );

  // 4) Controller
  sl.registerFactory<ArticleController>(
        () => ArticleController(getArticles: sl()),
  );
}
