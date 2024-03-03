part of 'application_bloc.dart';

class ApplicationState {
  final int indexS;
  const ApplicationState({
    required this.indexS,
  });
}

final class ApplicationInitialState extends ApplicationState {
  ApplicationInitialState({required super.indexS});
}
