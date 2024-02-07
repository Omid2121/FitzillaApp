import 'package:equatable/equatable.dart';

class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileStateInitial extends ProfileState {
  const ProfileStateInitial();

  @override
  List<Object> get props => [];
}

class ProfileStateLoading extends ProfileState {
  const ProfileStateLoading();

  @override
  List<Object> get props => [];
}

class ProfileStateSuccess extends ProfileState {
  const ProfileStateSuccess();

  @override
  List<Object> get props => [];
}

class ProfileStateFailure extends ProfileState {
  final String message;

  const ProfileStateFailure(this.message);

  @override
  List<Object> get props => [message];
}