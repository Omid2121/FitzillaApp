import 'package:equatable/equatable.dart';

class ExerciseState extends Equatable {
  const ExerciseState();

  @override
  List<Object?> get props => [];
}

class ExerciseStateInitial extends ExerciseState {
  const ExerciseStateInitial();

  @override
  List<Object?> get props => [];
}

class ExerciseStateLoading extends ExerciseState {
  const ExerciseStateLoading();

  @override
  List<Object?> get props => [];
}

class ExerciseStateSuccess extends ExerciseState {
  const ExerciseStateSuccess();

  @override
  List<Object?> get props => [];
}

class ExerciseStateFailure extends ExerciseState {
  final String message;

  const ExerciseStateFailure(this.message);

  @override
  List<Object?> get props => [message];
}