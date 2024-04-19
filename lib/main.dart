import 'app/app.dart';
import 'package:flutter/material.dart';
import 'app/dependency_injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDependency();
  runApp(const MyApp());
}
