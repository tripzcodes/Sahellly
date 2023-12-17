import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.electricianName,
    this.appointmentDate,
    this.id,
  }) {
    electricianName = electricianName ?? Rx("Ahmed , Electrician");
    appointmentDate = appointmentDate ?? Rx("15th of December 2023, 18:60");
    id = id ?? Rx("");
  }

  Rx<String>? electricianName;

  Rx<String>? appointmentDate;

  Rx<String>? id;
}
