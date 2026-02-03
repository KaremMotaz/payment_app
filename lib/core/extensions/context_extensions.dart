import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  /// push named
  Future<T?> push<T>(String routeName, {Object? args}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: args);
  }

  /// push replacement
  Future<T?> pushReplacement<T>(String routeName, {Object? args}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed<T, T>(routeName, arguments: args);
  }

  /// push and remove all previous routes
  Future<T?> pushAndRemoveUntil<T>(String routeName, {Object? args}) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil<T>(routeName, (route) => false, arguments: args);
  }

  /// pop
  void pop<T>([T? result]) {
    Navigator.of(this).pop<T>(result);
  }

  /// can pop
  bool get canPop => Navigator.of(this).canPop();
}
