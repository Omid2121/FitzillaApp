import 'package:flutter/material.dart';

class TAuthValidators {
  static SnackBar? loginValidator(String email, String password) {
    if (email.isEmpty) {
      return const SnackBar(content: Text('Email is required'));
    }
    if (password.isEmpty) {
      return const SnackBar(content: Text('Password is required'));
    }
    if (password.length < 6) {
      return const SnackBar(content: Text('Password must be at least 6 characters'));
    }
    return null;
  }

  static SnackBar? registerValidator(String firstName, String lastName, String address, String phoneNumber, String email, String password) {
    if (firstName.isEmpty) {
      return const SnackBar(content: Text('First name is required'));
    }
    if (lastName.isEmpty) {
      return const SnackBar(content: Text('Last name is required'));
    }
    if (address.isEmpty) {
      return const SnackBar(content: Text('Address is required'));
    }
    if (phoneNumber.isEmpty) {
      return const SnackBar(content: Text('Phone number is required'));
    }
    if (email.isEmpty) {
      return const SnackBar(content: Text('Email is required'));
    }
    if (password.isEmpty) {
      return const SnackBar(content: Text('Password is required'));
    }
    if (password.length < 8) {
      return const SnackBar(content: Text('Password must be at least 8 characters'));
    }
    return null;
  }
}