// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) => ArticleModel(
      id: json['id'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
      imageUrl: json['imageUrl'] as String,
      author: json['author'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      likes: (json['likes'] as num).toInt(),
      views: (json['views'] as num).toInt(),
    );

Map<String, dynamic> _$ArticleModelToJson(ArticleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'author': instance.author,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'tags': instance.tags,
      'likes': instance.likes,
      'views': instance.views,
    };
