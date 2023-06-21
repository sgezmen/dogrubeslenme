// To parse this JSON data, do
//
//     final blogsModel = blogsModelFromJson(jsonString);

import 'dart:convert';

List<BlogsModel> blogsModelFromJson(String str) => List<BlogsModel>.from(json.decode(str).map((x) => BlogsModel.fromJson(x)));

String blogsModelToJson(List<BlogsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

BlogsModel singleblogModelFromJson(String str) => BlogsModel.fromJson(json.decode(str));

class BlogsModel {
  BlogsModel({
    this.id,
    this.title,
    this.content,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.image,
  });

  int id;
  String title;
  String content;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  Image image;

  factory BlogsModel.fromJson(Map<String, dynamic> json) => BlogsModel(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        content: json["content"] == null ? null : json["content"],
        publishedAt: json["published_at"] == null ? null : DateTime.parse(json["published_at"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "content": content == null ? null : content,
        "published_at": publishedAt == null ? null : publishedAt.toIso8601String(),
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "image": image == null ? null : image.toJson(),
      };
}

class Image {
  Image({
    this.id,
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  dynamic providerMetadata;
  DateTime createdAt;
  DateTime updatedAt;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        alternativeText: json["alternativeText"] == null ? null : json["alternativeText"],
        caption: json["caption"] == null ? null : json["caption"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        formats: json["formats"] == null ? null : Formats.fromJson(json["formats"]),
        hash: json["hash"] == null ? null : json["hash"],
        ext: json["ext"] == null ? null : json["ext"],
        mime: json["mime"] == null ? null : json["mime"],
        size: json["size"] == null ? null : json["size"].toDouble(),
        url: json["url"] == null ? null : json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"] == null ? null : json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "alternativeText": alternativeText == null ? null : alternativeText,
        "caption": caption == null ? null : caption,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "formats": formats == null ? null : formats.toJson(),
        "hash": hash == null ? null : hash,
        "ext": ext == null ? null : ext,
        "mime": mime == null ? null : mime,
        "size": size == null ? null : size,
        "url": url == null ? null : url,
        "previewUrl": previewUrl,
        "provider": provider == null ? null : provider,
        "provider_metadata": providerMetadata,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
      };
}

class Formats {
  Formats({
    this.thumbnail,
  });

  Thumbnail thumbnail;

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: json["thumbnail"] == null ? null : Thumbnail.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
      };
}

class Thumbnail {
  Thumbnail({
    this.ext,
    this.url,
    this.hash,
    this.mime,
    this.name,
    this.path,
    this.size,
    this.width,
    this.height,
  });

  String ext;
  String url;
  String hash;
  String mime;
  String name;
  dynamic path;
  double size;
  int width;
  int height;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        ext: json["ext"] == null ? null : json["ext"],
        url: json["url"] == null ? null : json["url"],
        hash: json["hash"] == null ? null : json["hash"],
        mime: json["mime"] == null ? null : json["mime"],
        name: json["name"] == null ? null : json["name"],
        path: json["path"],
        size: json["size"] == null ? null : json["size"].toDouble(),
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toJson() => {
        "ext": ext == null ? null : ext,
        "url": url == null ? null : url,
        "hash": hash == null ? null : hash,
        "mime": mime == null ? null : mime,
        "name": name == null ? null : name,
        "path": path,
        "size": size == null ? null : size,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
      };
}
