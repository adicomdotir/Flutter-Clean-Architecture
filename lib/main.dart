import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/presentation/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
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
      // home: const UserPage(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
