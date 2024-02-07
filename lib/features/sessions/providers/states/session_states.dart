import 'package:equatable/equatable.dart';

class SessionState extends Equatable {
  const SessionState();

  @override
  List<Object?> get props => [];
}

class SessionStateInitial extends SessionState {
  const SessionStateInitial();

  @override
  List<Object?> get props => [];
}

class SessionStateLoading extends SessionState {
  const SessionStateLoading();

  @override
  List<Object?> get props => [];
}

class SessionStateSuccess extends SessionState {
  const SessionStateSuccess();

  @override
  List<Object?> get props => [];
}

class SessionStateFailure extends SessionState {
  final String message;

  const SessionStateFailure(this.message);

  @override
  List<Object?> get props => [message];
}