import 'package:cash_flow/controllers/api_controller.dart';
import 'package:cash_flow/controllers/db_controller.dart';
import 'package:cash_flow/repositories/api_repository.dart';
import 'package:cash_flow/repositories/db_repository.dart';
import 'package:cash_flow/source/local/database.dart';
import 'package:cash_flow/source/remote/api_client.dart';
import 'package:get/get.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      ApiController(
        repository: ApiRepositoryImpl(
          apiClient: ApiClient(),
        ),
      ),
    );
    Get.put(
      DbController(
        repository: DbRepositoryImpl(
          appDatabase: AppDatabase(),
        ),
      ),
    );
  }
}