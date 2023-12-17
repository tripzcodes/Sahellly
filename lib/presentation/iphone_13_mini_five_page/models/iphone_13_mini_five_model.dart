import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [iphone_13_mini_five_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone13MiniFiveModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        electricianName: "Ahmed , Electrician".obs,
        appointmentDate: "15th of December 2023, 18:60".obs)
  ]);
}
