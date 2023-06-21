import 'dart:convert';

ContactModel contactModelFromJson(String str) => ContactModel.fromJson(json.decode(str));

String contactModelToJson(ContactModel data) => json.encode(data.toJson());

class ContactModel {
  ContactModel({
    this.id,
    this.email,
    this.subject,
    this.message,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String email;
  String subject;
  String message;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        id: json["id"] == null ? null : json["id"],
        email: json["email"] == null ? null : json["email"],
        subject: json["subject"] == null ? null : json["subject"],
        message: json["message"] == null ? null : json["message"],
        publishedAt: json["published_at"] == null ? null : DateTime.parse(json["published_at"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "subject": subject == null ? null : subject,
        "message": message == null ? null : message,
        "published_at": publishedAt == null ? null : publishedAt.toIso8601String(),
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
      };
}
