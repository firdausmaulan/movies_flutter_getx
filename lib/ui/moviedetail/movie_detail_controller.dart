import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movies_getx/data/mapper/movie_mapper.dart';
import 'package:movies_getx/data/remote/service_api.dart';
import 'package:movies_getx/ui/moviedetail/model/movie_detail.dart';

class MovieDetailController extends GetxController {
  final ServiceApi service = ServiceApi();
  final int? movieId = Get.arguments['movieId'];
  final MovieMapper mapper = MovieMapper();
  Rx<MovieDetail> movie = MovieDetail().obs;

  void getMovieDetail() async {
    try {
      final movieResponse = await ServiceApi().getMovieDetail(movieId);
      // Update the state here
      movie.value = mapper.toMovieDetail(movieResponse);
    } catch (e) {
      // Handle error
      debugPrint("error ${e.toString()}");
    }
  }
}
