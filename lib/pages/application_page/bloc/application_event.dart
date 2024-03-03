part of 'application_bloc.dart';

abstract class ApplicationEvent {
  const ApplicationEvent();
}

class ApplicationTriggerEvent extends ApplicationEvent {
  final int indexE;

  const ApplicationTriggerEvent({
    required this.indexE,
  });
}
