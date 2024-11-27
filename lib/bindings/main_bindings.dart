import 'package:cash_flow/controllers/db_controller.dart';
import 'package:cash_flow/repositories/db_repository.dart';
import 'package:cash_flow/source/local/database.dart';
import 'package:get/get.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AppDatabase());
    Get.put(DbController(repository: DbRepositoryImpl()));
  }
}