// lib/domain/entities/article.dart
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article extends Equatable {
  final String? id;
  final String title;
  final String content;
  final String imageUrl;
  final String author;
  final DateTime publishedAt;
  final List<String> tags;
  final int likes;
  final int views;

  Article({
    this.id,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.author,
    required this.publishedAt,
    required this.tags,
    required this.likes,
    required this.views,
  });

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  @override
  List<Object?> get props =>
      [id, title, content, imageUrl, author, publishedAt, tags, likes, views];
}
