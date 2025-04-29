// lib/presentation/routes/app_router.dart
import 'package:auto_route/auto_route.dart';
import '../../domain/entities/article.dart';
import '../pages/article_list_page.dart';
import '../pages/article_detail_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: ArticleListRoute.page, initial: true, path: '/'),
    AutoRoute(page: ArticleDetailRoute.page, path: '/detail'),
  ];
}
