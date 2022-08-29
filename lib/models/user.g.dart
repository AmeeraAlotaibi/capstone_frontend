// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      username: json['username'] as String,
      password: json['password'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'username': instance.username,
      'password': instance.password,
    };
