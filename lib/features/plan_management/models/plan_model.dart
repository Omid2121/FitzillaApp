
import '../../authentication/models/user_model.dart';
import '../../sessions/models/session_model.dart';

class PlanModel {
  late final String id;
  late final String title;
  late final String? description;
  late final DateTime createdAt;
  late final DateTime? modifiedAt;
  late final int sessionsPerWeek;
  late final int durationInWeeks;

  late final String creatorId;
  late final UserModel creator;

  late final List<SessionModel>? sessions;
}