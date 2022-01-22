part of 'donation_creation_bloc.dart';

abstract class DonationCreationEvent extends Equatable {
  const DonationCreationEvent();
}

class TitleChanged extends DonationCreationEvent {
  final String title;

  TitleChanged({required this.title});

  @override
  List<Object?> get props => [title];
}

class DescriptionChanged extends DonationCreationEvent {
  final String description;

  DescriptionChanged({required this.description});

  @override
  List<Object?> get props => [description];
}

class CategoryChanged extends DonationCreationEvent {
  final DonationCategory category;

  CategoryChanged(this.category);

  @override
  List<Object?> get props => [category];
}

class GoalAmountChanged extends DonationCreationEvent {
  final double goal;

  GoalAmountChanged(this.goal);

  @override
  List<Object?> get props => [goal];
}

class DueDateChanged extends DonationCreationEvent {
  final DateTime dueDate;

  DueDateChanged(this.dueDate);

  @override
  List<Object?> get props => [dueDate];
}

class ImageGalleryUpdated extends DonationCreationEvent {
  final String downloadUrl;

  ImageGalleryUpdated(this.downloadUrl);

  @override
  List<Object?> get props => [downloadUrl];
}

class ImageRemoved extends DonationCreationEvent {
  final int index;

  ImageRemoved(this.index);

  @override
  List<Object?> get props => [index];
}

class VideoAttachmentAdded extends DonationCreationEvent {
  final String downloadUrl;

  VideoAttachmentAdded(this.downloadUrl);

  @override
  List<Object?> get props => [downloadUrl];
}

class DocumentAttachmentAdded extends DonationCreationEvent {
  final String downloadUrl;

  DocumentAttachmentAdded(this.downloadUrl);

  @override
  List<Object?> get props => [downloadUrl];
}

class DonationCreationFormSubmitted extends DonationCreationEvent {
  @override
  List<Object?> get props => [];
}
