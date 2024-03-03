part of 'home_bloc.dart';

abstract class HomeEvent {}

class HomeDotsEvent extends HomeEvent {
  final int index;
   HomeDotsEvent({
    required this.index,
  });
}
