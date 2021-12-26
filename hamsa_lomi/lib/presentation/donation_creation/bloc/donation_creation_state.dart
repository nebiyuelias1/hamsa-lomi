part of 'donation_creation_bloc.dart';

class DonationCreationState extends Equatable {
  final RequiredTextInput title;
  final RequiredTextInput description;
  final RequiredCategoryInput category;
  final RequiredGoalInput goal;
  final RequiredDueDateInput dueDate;

  final FormzStatus status;

  const DonationCreationState({
    this.title = const RequiredTextInput.pure(),
    this.description = const RequiredTextInput.pure(),
    this.category = const RequiredCategoryInput.pure(),
    this.goal = const RequiredGoalInput.pure(),
    this.dueDate = const RequiredDueDateInput.pure(),
    this.status = FormzStatus.pure,
  });

  @override
  List<Object> get props =>
      [title, description, status, category, goal, dueDate];

  DonationCreationState copyWith({
    RequiredTextInput? title,
    RequiredTextInput? description,
    RequiredCategoryInput? category,
    RequiredGoalInput? goal,
    RequiredDueDateInput? dueDate,
    FormzStatus? status,
  }) {
    return DonationCreationState(
      title: title ?? this.title,
      status: status ?? this.status,
      description: description ?? this.description,
      category: category ?? this.category,
      goal: goal ?? this.goal,
      dueDate: dueDate ?? this.dueDate,
    );
  }
}
