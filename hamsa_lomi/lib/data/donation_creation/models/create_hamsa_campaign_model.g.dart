// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_hamsa_campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateHamsaCampaignModel _$CreateHamsaCampaignModelFromJson(
        Map<String, dynamic> json) =>
    CreateHamsaCampaignModel(
      id: json['id'] as String?,
      title: json['title'] as String,
      category: $enumDecode(_$DonationCategoryEnumMap, json['category']),
      goal: (json['goal'] as num).toDouble(),
      description: json['description'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
      imageGallery: (json['imageGallery'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      coverPhoto: json['coverPhoto'] as String,
      videoAttachment: json['videoAttachment'] as String?,
      documentAttachment: json['documentAttachment'] as String?,
    );

Map<String, dynamic> _$CreateHamsaCampaignModelToJson(
        CreateHamsaCampaignModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'goal': instance.goal,
      'description': instance.description,
      'dueDate': instance.dueDate.toIso8601String(),
      'imageGallery': instance.imageGallery,
      'coverPhoto': instance.coverPhoto,
      'videoAttachment': instance.videoAttachment,
      'documentAttachment': instance.documentAttachment,
      'category':
          CreateHamsaCampaignModel.donationCategoryToJson(instance.category),
    };

const _$DonationCategoryEnumMap = {
  DonationCategory.health: 'health',
  DonationCategory.education: 'education',
  DonationCategory.personal: 'personal',
  DonationCategory.charity: 'charity',
  DonationCategory.emergency: 'emergency',
};
