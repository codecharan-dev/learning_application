import 'package:learning_app/common/entitis/course.dart';

class CourseState {
  final CourseItem? courseItemS;
  CourseState({
   required this.courseItemS,
  });

  CourseState copyWith({
    CourseItem? courseItemS,
  }) {
    return CourseState(
      courseItemS: courseItemS ?? this.courseItemS,
    );
  }
}

final class CourseInitialState extends CourseState {
  CourseInitialState({required super.courseItemS});
}
