
import '../../../utils/constants/enums/activity_type_enum.dart';
import '../../authentication/models/user_model.dart';
import '../../exercises/models/exercise_model.dart';
import '../../plan_management/models/plan_model.dart';

class SessionModel {
  late final String id;
  late final String title;
  late final String? description;
  late final DateTime createdAt;
  late final DateTime? modifiedAt;
  late final bool isActive;
  late final DateTime? activatedAt;
  late final DateTime? finishedAt;

  late final String? planId;
  late final PlanModel? plan;

  late final String? creatorId;
  late final UserModel? creator;

  late final List<ActivityTypeEnum>? activityTypes;
  late final List<ExerciseModel>? exercises;
}