import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_getx/data/mapper/movie_mapper.dart';
import 'package:movies_getx/data/remote/request/movies_request.dart';
import 'package:movies_getx/data/remote/response/genres_response.dart';
import 'package:movies_getx/data/remote/service_api.dart';
import 'package:movies_getx/ui/movielist/model/movie_item.dart';

class MovieListController extends GetxController{
  final ServiceApi service = ServiceApi();
  RxList<MovieItem> movies = <MovieItem>[].obs;
  final MoviesRequest request = MoviesRequest();
  bool isLoading = false;
  bool isLastPage = false;
  List<Genres> genres = [];

  void searchMovies(String query) async {
    if (isLoading) return;
    isLoading = true;
    isLastPage = false;
    request.query = query;
    request.page = 1;
    try {
      if (genres.isEmpty) {
        final genresResponse = await service.getGenres();
        genres = genresResponse.genres ?? [];
      }
      final moviesResponse = await service.getMovies(request);
      final newList = MovieMapper().toMovieList(moviesResponse, genres);
      movies.clear();
      movies.assignAll(newList); // Update the state here
      debugPrint("state length ${movies.length}");
    } catch (e) {
      // Handle error
      debugPrint("error ${e.toString()}");
    }
    isLoading = false;
  }

  void loadMore() async {
    if (isLoading || isLastPage) return;
    isLoading = true;
    request.page = (request.page ?? 0) + 1;
    try {
      final moviesResponse = await service.getMovies(request);
      final newList = MovieMapper().toMovieList(moviesResponse, genres);
      movies.assignAll(newList);
      isLastPage = newList.isEmpty;
      debugPrint("state length ${movies.length}");
    } catch (e) {
      // Handle error
      debugPrint("error ${e.toString()}");
    }
    isLoading = false;
  }
}
