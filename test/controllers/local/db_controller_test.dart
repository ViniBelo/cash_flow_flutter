import 'package:cash_flow/controllers/db_controller.dart';
import 'package:cash_flow/repositories/db_repository.dart';
import 'package:cash_flow/models/cash_flow.dart' as model;
import 'package:cash_flow/source/local/database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'db_controller_test.mocks.dart';

@GenerateMocks([DbRepository, AppDatabase])
void main() {
  late MockDbRepository dbRepository;
  late DbController dbController;

  final mockCashFlow = model.CashFlow(
    id: '123',
    amount: 100.0,
    type: 'expense',
    source: 'salary',
    expirationDate: DateTime.now(),
  );

  setUp(() {
    dbRepository = MockDbRepository();
    Get.put<DbRepository>(dbRepository);
    dbController = DbController(repository: dbRepository);
  });

  test('Success on insertCashFlow', () async {
    // Simulates repository behavior, returning a success ID
    when(dbRepository.insertCashFlow(cashFlow: mockCashFlow)).thenAnswer((_) async => 1);

    // Call the insertion method in the controller
    final result = await dbController.insertCashFlow(cashFlow: mockCashFlow);

    // Checks if the result was as expected (ID returned)
    expect(result, 1);

    // Checks if the insertCashFlow method was called once with the correct parameters
    verify(dbRepository.insertCashFlow(cashFlow: mockCashFlow)).called(1);
  });

  test('Success on deleteCashFlow', () async {
    const id = '123';

    // Mock return from deleteCashFlow
    when(dbRepository.deleteCashFlow(id: id)).thenAnswer((_) async => 1);

    // Call the method to delete CashFlow
    final result = await dbController.deleteCashFlow(id: id);

    // Checks if the method was called correctly
    expect(result, 1);
    verify(dbRepository.deleteCashFlow(id: id)).called(1);
  });
}