import 'package:cash_flow/bindings/main_bindings.dart';
import 'package:cash_flow/config/routes.dart';
import 'package:cash_flow/screens/cash_flow/form/form_screen.dart';
import 'package:cash_flow/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cash Flow',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: homeRoute,
      getPages: [
        GetPage(
          name: homeRoute,
          page: () => const HomeScreen(),
          binding: MainBindings(),
        ),
        GetPage(
          name: formCashFlowRoute,
          page: () => FormScreen(),
          binding: MainBindings(),
        )
      ],
    );
  }
}
