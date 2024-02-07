import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _secureStorage = const FlutterSecureStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _secureStorage.write(key: key, value: value.toString());
  }

  // Generic method to read all data
  Future<Map<String, String>> readAllData() async {
    return await _secureStorage.readAll();
  }

  // Generic method to read data
  T? readData<T>(String key) {
    return _secureStorage.read(key: key) as T?;
  }

  // Generic method to delete all data
  Future<void> removeAllData() async {
    await _secureStorage.deleteAll();
  }

  // Genetic method to delete data
  Future<void> removeData(String key) async {
    await _secureStorage.delete(key: key);
  }

  // Generic method to check if data exists
  Future<bool> containsData(String key) async {
    return await _secureStorage.containsKey(key: key);
  }
}