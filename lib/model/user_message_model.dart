import 'package:flutter_training_2/model/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_message_model.g.dart';

@JsonSerializable()
class UserMessage {
  final String? id;
  final String? text;
  final User? user;
  final int? replyCount;
  final int? unreadCount;
  final String? createdAt;

  UserMessage({
    this.id,
    this.text,
    this.user,
    this.replyCount,
    this.unreadCount,
    this.createdAt,
  });

  factory UserMessage.fromJson(Map<String, dynamic> json) =>
      _$UserMessageFromJson(json);

  Map<String, dynamic> toJson() => _$UserMessageToJson(this);
}
