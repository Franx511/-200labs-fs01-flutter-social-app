// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMessage _$UserMessageFromJson(Map<String, dynamic> json) => UserMessage(
      id: json['id'] as String?,
      text: json['text'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      replyCount: json['replyCount'] as int?,
      unreadCount: json['unreadCount'] as int?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$UserMessageToJson(UserMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'user': instance.user,
      'replyCount': instance.replyCount,
      'unreadCount': instance.unreadCount,
      'createdAt': instance.createdAt,
    };
