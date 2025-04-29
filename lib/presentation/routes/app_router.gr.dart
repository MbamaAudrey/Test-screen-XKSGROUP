// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ArticleDetailPage]
class ArticleDetailRoute extends PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute({
    required Article article,
    List<PageRouteInfo>? children,
  }) : super(
          ArticleDetailRoute.name,
          args: ArticleDetailRouteArgs(article: article),
          initialChildren: children,
        );

  static const String name = 'ArticleDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticleDetailRouteArgs>();
      return ArticleDetailPage(article: args.article);
    },
  );
}

class ArticleDetailRouteArgs {
  const ArticleDetailRouteArgs({required this.article});

  final Article article;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{article: $article}';
  }
}

/// generated route for
/// [ArticleListPage]
class ArticleListRoute extends PageRouteInfo<void> {
  const ArticleListRoute({List<PageRouteInfo>? children})
      : super(
          ArticleListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticleListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return ArticleListPage();
    },
  );
}
