import 'package:flutter/material.dart';

/// Class for the state of the provider
class ProviderState {
  ///Default constructor
  ProviderState({this.msg});

  ///idle state
  static ProviderState idle = ProviderState(msg: 'idle');

  ///loading state
  static ProviderState loading = ProviderState(msg: 'loading');

  ///error state
  static ProviderState error = ProviderState(msg: 'error');

  ///success state
  static ProviderState success = ProviderState(msg: 'success');

  ///Message variables
  String? msg;
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
