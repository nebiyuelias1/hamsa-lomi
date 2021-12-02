// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'donation_category.dart';

abstract class BaseHamsaCampaign extends Equatable {
  final String title;
  final DonationCategory category;
  final double goal;
  final String description;
  final DateTime dueDate;

  BaseHamsaCampaign({
    required this.title,
    required this.category,
    required this.goal,
    required this.description,
    required this.dueDate,
  });

  @override
  List<Object?> get props => [
        title,
        category,
        goal,
        description,
        dueDate,
      ];
}
