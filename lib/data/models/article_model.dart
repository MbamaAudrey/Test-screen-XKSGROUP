// lib/data/models/article_model.dart
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/article.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel extends Article {
  ArticleModel({
    String? id,
    required String title,
    required String content,
    required String imageUrl,
    required String author,
    required DateTime publishedAt,
    required List<String> tags,
    required int likes,
    required int views,
  }) : super(
    id: id,
    title: title,
    content: content,
    imageUrl: imageUrl,
    author: author,
    publishedAt: publishedAt,
    tags: tags,
    likes: likes,
    views: views,
  );

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
