import 'package:equatable/equatable.dart';

class PlanState extends Equatable {
  const PlanState();

  @override
  List<Object?> get props => [];
}

class PlanStateInitial extends PlanState {
  const PlanStateInitial();

  @override
  List<Object?> get props => [];
}

class PlanStateLoading extends PlanState {
  const PlanStateLoading();

  @override
  List<Object?> get props => [];
}

class PlanStateSuccess extends PlanState {
  const PlanStateSuccess();

  @override
  List<Object?> get props => [];
}

class PlanStateFailure extends PlanState {
  final String message;

  const PlanStateFailure(this.message);

  @override
  List<Object?> get props => [message];
}