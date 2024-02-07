import 'package:fitzilla_app/utils/constants/enums/gender_enum.dart';
import 'package:fitzilla_app/utils/constants/enums/measurement_enum.dart';

import '../../exercises/models/exercise_model.dart';
import '../../exercises/models/exercise_template_model.dart';
import '../../exercises/models/media_model.dart';
import '../../macro_tracking/models/macro_model.dart';
import '../../plan_management/models/plan_model.dart';
import '../../sessions/models/session_model.dart';
class UserModel {

  late final String id;
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String password;
  late final DateTime dateOfBirth;
  late final String phoneNumber;
  late final GenderEnum gender;
  late final double weight;
  late final double height;
  late final MeasurementEnum measurement;

  List<ExerciseTemplateModel> exerciseTemplates = [];
  List<ExerciseModel> exercises = [];
  List<MacroModel> macros = [];
  List<SessionModel> sessions = [];
  List<PlanModel> plans = [];
  List<MediaModel> medias = [];
}