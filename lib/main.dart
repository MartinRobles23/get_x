import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/helpers/init_dependency.dart';
import 'package:get_x/presentation/screens/home_page.dart';
import 'helpers/init_controllers.dart' as di;

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // await di.initControllers(); Inyeccion de dependencias!
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDependency(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
