// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import '../../../domain/core/entities/entities.dart';
import '../../../domain/donation_creation/donation_creation.dart';
import '../../core/form_inputs/required_text_input.dart';
import '../form_inputs/required_category_input.dart';
import '../form_inputs/required_due_date_input.dart';
import '../form_inputs/required_goal_input.dart';

part 'donation_creation_event.dart';
part 'donation_creation_state.dart';

@injectable
class DonationCreationBloc
    extends Bloc<DonationCreationEvent, DonationCreationState> {
  final CreateHamsaCampaignUseCase _createHamsaCampaignUseCase;

  DonationCreationBloc(this._createHamsaCampaignUseCase)
      : super(DonationCreationState()) {
    on<TitleChanged>((event, emit) {
      final titleInput = RequiredTextInput.dirty(event.title);
      final status = _validateFormInputs(
        title: titleInput,
        description: state.description,
        category: state.category,
        goal: state.goal,
        dueDate: state.dueDate,
      );
      emit(state.copyWith(title: titleInput, status: status));
    });
    on<DescriptionChanged>((event, emit) {
      final descriptionInput = RequiredTextInput.dirty(event.description);
      final status = _validateFormInputs(
        title: state.title,
        description: descriptionInput,
        category: state.category,
        goal: state.goal,
        dueDate: state.dueDate,
      );
      emit(state.copyWith(description: descriptionInput, status: status));
    });
    on<CategoryChanged>((event, emit) {
      final categoryInput = RequiredCategoryInput.dirty(event.category);
      final status = _validateFormInputs(
        title: state.title,
        description: state.description,
        category: categoryInput,
        goal: state.goal,
        dueDate: state.dueDate,
      );
      emit(state.copyWith(category: categoryInput, status: status));
    });
    on<GoalAmountChanged>((event, emit) {
      final goalInput = RequiredGoalInput.dirty(event.goal);
      final status = _validateFormInputs(
        category: state.category,
        description: state.description,
        goal: goalInput,
        title: state.title,
        dueDate: state.dueDate,
      );
      emit(state.copyWith(status: status, goal: goalInput));
    });
    on<DueDateChanged>((event, emit) {
      final dueDateInput = RequiredDueDateInput.dirty(event.dueDate);
      final status = _validateFormInputs(
          title: state.title,
          description: state.description,
          category: state.category,
          goal: state.goal,
          dueDate: dueDateInput);
      emit(state.copyWith(status: status, dueDate: dueDateInput));
    });
    on<DonationCreationFormSubmitted>((event, emit) async {
      if (state.status.isValidated) {
        emit(state.copyWith(status: FormzStatus.submissionInProgress));

        final failureOrSuccess = await _createHamsaCampaignUseCase(
          CreateHamsaCampaign(
            title: state.title.value,
            category: state.category.value!,
            goal: state.goal.value,
            description: state.description.value,
            dueDate: state.dueDate.value!,
          ),
        );

        failureOrSuccess.fold(
            (l) => emit(state.copyWith(status: FormzStatus.submissionFailure)),
            (r) => emit(state.copyWith(status: FormzStatus.submissionSuccess)));
      }
    });
  }

  FormzStatus _validateFormInputs(
      {required RequiredTextInput title,
      required RequiredTextInput description,
      required RequiredCategoryInput category,
      required RequiredGoalInput goal,
      required RequiredDueDateInput dueDate}) {
    return Formz.validate([title, description, category, goal, dueDate]);
  }
}