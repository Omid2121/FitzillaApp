
import 'package:fitzilla_app/utils/constants/enums/equipment_enum.dart';

import '../../../utils/constants/enums/target_muscle_enum.dart';
import '../../authentication/models/user_model.dart';
import '../../sessions/models/session_model.dart';
import 'exercise_record_model.dart';
import 'media_model.dart';

class ExerciseModel {
  late final String id;
  late final String title;
  late final String? description;
  late final DateTime createdAt;
  late final DateTime? modifiedAt;
  late final int set;

  late final String? sessionId;
  late final SessionModel? session;

  late final String creatorId;
  late final UserModel creator;

  late final EquipmentEnum equipment;

  late final List<TargetMuscleEnum> targetMuscles;

  late final List<ExerciseRecordModel> exerciseRecords;

  late final List<MediaModel>? medias;
}