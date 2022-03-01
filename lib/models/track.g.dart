// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => _$_Track(
      id: json['id'] as String,
      name: json['name'] as String,
      artistName: json['artistName'] as String,
      artistId: json['artistId'] as String,
      mp3Url: json['previewURL'] as String,
      albumName: json['albumName'] as String,
      albumId: json['albumId'] as String,
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artistName': instance.artistName,
      'artistId': instance.artistId,
      'previewURL': instance.mp3Url,
      'albumName': instance.albumName,
      'albumId': instance.albumId,
    };
