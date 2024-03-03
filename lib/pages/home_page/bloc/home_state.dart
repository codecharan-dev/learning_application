part of 'home_bloc.dart';

class HomeState {
  final int index;
  const HomeState({
    required this.index,
  });

  HomeState copyWith({
    int? index,
  }) {
    return HomeState(
      index: index ?? this.index,
    );
  }
}

final class HomeInitialState extends HomeState {
  HomeInitialState({required super.index});
}
