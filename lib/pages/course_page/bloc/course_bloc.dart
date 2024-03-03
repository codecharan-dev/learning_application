import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/common/entitis/course.dart';
import 'package:learning_app/pages/course_page/bloc/course_state.dart';

part 'course_event.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc() : super(CourseInitialState(courseItemS: CourseItem())) {
    on<TriggerCourseEvent>(triggerCourseEvent);
  }

  FutureOr<void> triggerCourseEvent(
      TriggerCourseEvent event, Emitter<CourseState> emit) {
    emit(state.copyWith(courseItemS: event.courseItemE));
  }
}
