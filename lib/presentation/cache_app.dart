import 'package:cache_sample/data/movie_repo.dart';
import 'package:cache_sample/di/injectable.dart';
import 'package:cache_sample/presentation/home_screen.dart';
import 'package:cache_sample/presentation/provider/movie_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CacheApp extends StatelessWidget {
  const CacheApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_)=> MovieProvider(movieRepo: getItInstance<MovieRepo>()),
      child: MaterialApp(
         debugShowCheckedModeBanner: false,
          title: 'Cache Sample',
        home: HomeScreen(),
      ),);
    
  }
}