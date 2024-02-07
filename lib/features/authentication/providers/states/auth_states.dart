
import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthStateInitial extends AuthState {
  const AuthStateInitial();

  @override
  List<Object?> get props => [];
}

class AuthStateLoading extends AuthState {
  const AuthStateLoading();

  @override
  List<Object?> get props => [];
}

class AuthStateSuccess extends AuthState {
  const AuthStateSuccess();

  @override
  List<Object?> get props => [];
}

class AuthStateFailure extends AuthState {
  final String message;

  const AuthStateFailure(this.message);

  @override
  List<Object?> get props => [message];
}