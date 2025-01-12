// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'donation_category.dart';

abstract class BaseHamsaCampaign extends Equatable {
  final String? id;
  final String title;
  final DonationCategory category;
  final double goal;
  final String description;
  final DateTime dueDate;
  final List<String> imageGallery;
  final String coverPhoto;
  final String? videoAttachment;
  final String? documentAttachment;

  BaseHamsaCampaign({
    this.id,
    required this.title,
    required this.category,
    required this.goal,
    required this.description,
    required this.dueDate,
    required this.imageGallery,
    required this.coverPhoto,
    this.videoAttachment,
    this.documentAttachment,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        category,
        goal,
        description,
        dueDate,
        imageGallery,
        videoAttachment,
        documentAttachment,
        coverPhoto,
      ];
}
