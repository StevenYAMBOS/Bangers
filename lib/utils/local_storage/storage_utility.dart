import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  // Enregistrer
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Lire
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Supprimer
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear
  Future<void> clearData() async {
    await _storage.erase();
  }

}