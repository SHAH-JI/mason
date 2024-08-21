import 'package:{{project}}/utils/utils.dart';
import 'package:flutter/material.dart';

/// Base Class for the state handling
class ProviderBaseState {
  ///default constructor
  ProviderBaseState({required this.state});

  /// state of the provider
  ProviderState state;
}

///BaseViewModel for handling the provider status
class BaseViewModel extends ChangeNotifier {
  ///Default Constructor
  BaseViewModel({required BuildContext context}) : nav = Navigator.of(context);

  ///State of the provider
  ProviderState _state = ProviderState.idle;

  ///Navigator state for the view model
  NavigatorState nav;

  ///Set the current state of the provider
  void changeState(ProviderState state) {
    _state = state;
    notifyListeners();
  }

  ///Get the current state of the provider
  ProviderState get state => _state;

  ///Check if the provider is in the loading state
  bool get isLoading => _state == ProviderState.loading;
}