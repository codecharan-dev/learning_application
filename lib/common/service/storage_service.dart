// import 'package:learning_app/common/values/constant/constant.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class StorageService {
//   late final SharedPreferences preferences;

//   Future<StorageService> initStorageService() async {
//     preferences = await SharedPreferences.getInstance();
//     return StorageService();
//   }

//   Future<bool> setBool({required String key, required bool value}) async {
//     return await preferences.setBool(key, value);
//   }

//   bool? getDeviceFirstOpen() {
//     return preferences.getBool(AppConstants.storageDeviceOpenFirstTimeKey) ?? false ;
//   }
// }
