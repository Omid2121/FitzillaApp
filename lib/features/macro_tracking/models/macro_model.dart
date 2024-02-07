import 'package:fitzilla_app/utils/constants/enums/activity_level_enum.dart';
import 'package:fitzilla_app/utils/constants/enums/goal_type_enum.dart';

import '../../authentication/models/user_model.dart';
import 'nutrition_info_model.dart';

class MacroModel {
  late final String id;
  late final String title;
  late final String? description;
  late final DateTime createdAt;
  late final DateTime? modifiedAt;
  late final double goalWeight;
  late final DateTime cycleStartDate;
  late final DateTime cycleEndDate;
  late final GoalTypeEnum goalType;
  late final ActivityLevelEnum activityLevel;

  late final String nutritionInfoId;
  late final NutritionInfoModel nutritionInfo;

  late final String creatorId;
  late final UserModel creator;
}