import 'package:play_safe/core/contants/hives_box.dart';
import 'package:play_safe/core/models/data_query_model.dart';
import 'package:play_safe/core/services/local_storage/local_storage_service.dart';

const String _hasSeenOnboardingKey = 'hasSeenOnboardingKey';

class PersistentStorageService extends LocalStorageService {
  PersistentStorageService() : super(persistBox, 'PersistentStorageService');

  void saveUsername(String key, String value) => saveData(key, value);
  String? getPersistData(String key) => getData(key);

  // Persist the onboarding setting
  bool get hasSeenOnboarding => getData(_hasSeenOnboardingKey) ?? false;
  set hasSeenOnboarding(bool value) => saveData(_hasSeenOnboardingKey, value);

  void savePost(String key, Record value) => saveData(key, value);
  String? getPost(String key) => getData(key);
}
