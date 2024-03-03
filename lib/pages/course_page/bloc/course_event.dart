part of 'course_bloc.dart';

abstract class CourseEvent {}

class TriggerCourseEvent extends CourseEvent {
  final CourseItem courseItemE;
  TriggerCourseEvent({
    required this.courseItemE,
  });
}
