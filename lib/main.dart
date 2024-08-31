import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_getx/ui/moviedetail/movies_detail_page.dart';
import 'package:movies_getx/ui/movielist/movie_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      navigatorObservers: [ChuckerFlutter.navigatorObserver],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: MovieListPage(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MovieListPage()),
        // binding: MovieListBinding() | dependency injection for MovieListController
        GetPage(name: '/detail', page: () => MovieDetailPage())
        // binding: MovieDetailBinding() | dependency injection for MovieDetailController
      ],
    );
  }
}
