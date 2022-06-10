import 'package:cache_sample/di/injectable.dart';
import 'package:cache_sample/presentation/cache_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  runApp(const CacheApp());
}


