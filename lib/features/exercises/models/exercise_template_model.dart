import '../../../utils/constants/enums/equipment_enum.dart';
import '../../../utils/constants/enums/target_muscle_enum.dart';
import '../../authentication/models/user_model.dart';
import 'media_model.dart';

class ExerciseTemplateModel {
  late final String id;
  late final String title;
  late final String? description;
  late final DateTime createdAt;
  late final DateTime? modifiedAt;

  late final String creatorId;
  late final UserModel creator;

  late final EquipmentEnum equipment;

  late final List<TargetMuscleEnum> targetMuscles;

  late final List<MediaModel>? medias;
}