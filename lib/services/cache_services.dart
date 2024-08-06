import 'dart:convert';
import 'dart:developer';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheServices {
  CacheServices._private();
  static CacheServices get instance {
    return _instance;
  }

  late FlutterSecureStorage storage;
  late SharedPreferences prefs;

  static final CacheServices _instance = CacheServices._private();

  // CacheServices() {
  //   init();
  // }

  Future<void> init() async {
    AndroidOptions getAndroidOptions() =>
        const AndroidOptions(encryptedSharedPreferences: true);
    storage = FlutterSecureStorage(aOptions: getAndroidOptions());
    await SharedPreferences.getInstance().then((value) async => prefs = value);
  }

  // Call this function from your StatefulWidget's initState()

  // UserModel? getUserModel() {
  //   UserModel? user;
  //   try {
  //     // String? json = prefs.getString('user');
  //     String? json = prefs.getString('user');
  //     if (json != null) {
  //       var v = jsonDecode(json);
  //       user = UserModel.fromJson(v);
  //     } else {
  //       log('user not loaded', name: 'CacheService::getuser');
  //     }
  //   } catch (e) {
  //     log(e.toString(), name: 'CacheService::getuser');
  //   }
  //   return user;
  // }

  // Future<bool> setUserModel(UserModel user) async {
  //   try {
  //     await prefs.setString('user', jsonEncode(user.toJson()));
  //     return true;
  //   } catch (e) {
  //     log(e.toString(), name: 'CacheService::setuser');
  //     return false;
  //   }
  // }

  Future<bool> removeUserModel() async {
    try {
      await prefs.remove('user');
      return true;
    } catch (e) {
      log(e.toString(), name: 'CacheService::removeuser');
      return false;
    }
  }

  String getLangCode() {
    final cachedLangCode = prefs.getString("LOCALE");
    if (cachedLangCode != null) {
      return cachedLangCode;
    } else {
      return "en";
    }
  }

  Future<bool> setLangCode(String locale) async {
    try {
      await prefs.setString("LOCALE", locale);
      return true;
    } catch (e) {
      log(e.toString(), name: 'CacheService::setLangCode');
      return false;
    }
  }

  Map<String, dynamic>? getCredintials() {
    Map<String, dynamic>? token;
    try {
      // String? json = prefs.getString('token');
      String? json = prefs.getString('credintials');
      if (json != null) {
        token = jsonDecode(json);
      } else {
        log('credintials not loaded', name: 'CacheService::getCredintials');
      }
    } catch (e) {
      log(e.toString(), name: 'CacheService::getCredintials');
    }
    return token;
  }

  Future<bool> setCredintials(Map<String, dynamic> credintials) async {
    try {
      await prefs.setString('credintials', jsonEncode(credintials));
      return true;
    } catch (e) {
      log(e.toString(), name: 'CacheService::setCredintials');
      return false;
    }
  }

  Future<String?> getToken() async {
    String? token;
    try {
      // String? json = prefs.getString('token');
      String? json = await storage.read(key: 'token');
      if (json != null) {
        token = json;
      } else {
        log('token not loaded', name: 'CacheService::getToken');
      }
    } catch (e) {
      log(e.toString(), name: 'CacheService::getToken');
    }
    return token;
  }

  Future<bool> setToken(String token) async {
    try {
      await storage.write(key: 'token', value: token);
      return true;
    } catch (e) {
      log(e.toString(), name: 'CacheService::setToken');
      return false;
    }
  }
///// device token /////

  Future<bool> setDeviceToken(String deviceToken) async {
    try {
      await prefs.setString('deviceToken', deviceToken);
      return true;
    } catch (e) {
      log(e.toString(), name: 'CacheService::setdeviceToken');
      return false;
    }
  }

  String? getDeviceToken() {
    String? dToken;
    try {
      // String? json = prefs.getString('token');
      String? json = prefs.getString('deviceToken');
      if (json != null) {
        dToken = json;
      } else {
        log('Device token not loaded', name: 'CacheService::getDeviceToken');
      }
    } catch (e) {
      log(e.toString(), name: 'CacheService::getDeviceToken');
    }
    return dToken;
  }

////
  ///     remember me   /////
  ///

  bool? getrememberMe() {
    bool? rememberMe;
    try {
      // String? json = prefs.getString('rememberMe');
      bool? json = prefs.getBool('rememberMe');
      if (json != null) {
        rememberMe = json;
      } else {
        log('RememberMe not loaded', name: 'CacheService::getRememberMe');
      }
    } catch (e) {
      log(e.toString(), name: 'CacheService::getRememberMe');
    }
    return rememberMe;
  }

  Future<bool> setRememberMe(bool trueFalse) async {
    try {
      await prefs.setBool('rememberMe', trueFalse);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  bool? getIsPatient() {
    bool? isPatient;
    try {
      // String? json = prefs.getString('rememberMe');
      bool? json = prefs.getBool('isPatient');
      if (json != null) {
        isPatient = json;
      } else {
        log('IsPatient not loaded', name: 'CacheService::getIsPatient');
      }
    } catch (e) {
      log(e.toString(), name: 'CacheService::getIsPatient');
    }
    return isPatient;
  }

  Future<bool> setIsPatient(bool trueFalse) async {
    try {
      await prefs.setBool('isPatient', trueFalse);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

///////
  bool isAuthenticated() {
    try {
      String? patient = prefs.getString('patient');
      // UserModel tempUser = UserModel.fromJson(jsonDecode(user ?? ''));
      if (patient != null) {
        return true;
      }
      return false;
    } catch (e) {
      log(e.toString(), name: 'CacheService::isAuthenticated');
      return false;
    }
  }

  //set isImageUploadScreenShown

  bool? getisImageUploadScreenShown() {
    bool? isImageUploadScreenShown;
    try {
      // String? json = prefs.getString('isImageUploadScreenShown');
      bool? json = prefs.getBool('isImageUploadScreenShown');
      if (json != null) {
        isImageUploadScreenShown = json;
      } else {
        log('isImageUploadScreenShown not loaded',
            name: 'CacheService::getisImageUploadScreenShown');
      }
    } catch (e) {
      log(e.toString(), name: 'CacheService::getisImageUploadScreenShown');
    }
    return isImageUploadScreenShown;
  }

  Future<bool> setisImageUploadScreenShown(bool trueFalse) async {
    try {
      await prefs.setBool('isImageUploadScreenShown', trueFalse);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> setFitAuth(bool auth) async {
    try {
      await prefs.setBool('fit', auth);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  bool? getIsFitAuth() {
    bool? fit;
    try {
      // String? json = prefs.getString('rememberMe');
      bool? json = prefs.getBool('fit');
      if (json != null) {
        fit = json;
      } else {
        log('Health Fit not loaded', name: 'CacheService::HealthFit');
      }
    } catch (e) {
      log(e.toString(), name: 'CacheService::HealthFit');
    }
    return fit;
  }

  Future<bool> setLastDateOpened() async {
    try {
      await prefs.setString(
          'lastDate',
          DateTime(
                  DateTime.now().year, DateTime.now().month, DateTime.now().day)
              .toString());
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  DateTime? getLastDateOpened() {
    DateTime? lastDate;
    try {
      // String? json = prefs.getString('rememberMe');
      String? json = prefs.getString('lastDate');
      if (json != null) {
        lastDate = DateTime.parse(json);
        log(lastDate.toString());
      } else {
        log('lastDateOpened is not loaded',
            name: 'CacheService::getLastDateOpened');
      }
    } catch (e) {
      log(e.toString(), name: 'CacheService::getLastDateOpened');
    }
    return lastDate;
  }
  String? getDataString({required String key}) {
    return prefs.getString(key);
  }

//! this method to put data in local database using key

  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is bool) {
      return await prefs.setBool(key, value);
    }

    if (value is String) {
      return await prefs.setString(key, value);
    }

    if (value is int) {
      return await prefs.setInt(key, value);
    } else {
      return await prefs.setDouble(key, value);
    }
  }

//! this method to get data already saved in local database

  dynamic getData({required String key}) {
    return prefs.get(key);
  }

//! remove data using specific key

  Future<bool> removeData({required String key}) async {
    return await prefs.remove(key);
  }

//! this method to check if local database contains {key}
  Future<bool> containsKey({required String key}) async {
    return prefs.containsKey(key);
  }

  Future<bool> clearData({required String key}) async {
    return prefs.clear();
  }

//! this fun to put data in local data base using key
  Future<dynamic> put({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await prefs.setString(key, value);
    } else if (value is bool) {
      return await prefs.setBool(key, value);
    } else {
      return await prefs.setInt(key, value);
    }
  }
}
