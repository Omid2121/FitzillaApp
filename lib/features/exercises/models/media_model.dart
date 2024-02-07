import '../../authentication/models/user_model.dart';
import 'exercise_model.dart';
import 'exercise_template_model.dart';

class MediaModel {
  late final String id;
  late final String title;
  late final String filePath;

  late final String creatorId;
  late final UserModel creator;

  late final List<ExerciseModel> exercises;
  late final List<ExerciseTemplateModel> exerciseTemplates;
}