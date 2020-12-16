import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_firebase_ddd_course/domain/core/value_objects.dart';

part 'current_user.freezed.dart';

@freezed
abstract class CurrentUser with _$CurrentUser {
  const factory CurrentUser({
    @required UniqueId id,
  }) = _CurrentUser;
}
