import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/presentation/app_router.dart';
import 'package:flutter_clean_arch/presentation/pages/users_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UsersPage(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
