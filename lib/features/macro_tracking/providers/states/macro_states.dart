import 'package:equatable/equatable.dart';

class MacroState extends Equatable {
  const MacroState();

  @override
  List<Object?> get props => [];
}

class MacroStateInitial extends MacroState {
  const MacroStateInitial();

  @override
  List<Object?> get props => [];
}

class MacroStateLoading extends MacroState {
  const MacroStateLoading();

  @override
  List<Object?> get props => [];
}

class MacroStateSuccess extends MacroState {
  const MacroStateSuccess();

  @override
  List<Object?> get props => [];
}

class MacroStateFailure extends MacroState {
  final String message;

  const MacroStateFailure(this.message);

  @override
  List<Object?> get props => [message];
}