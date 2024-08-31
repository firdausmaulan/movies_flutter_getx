import 'package:movies_getx/data/remote/response/genres_response.dart';
import 'package:movies_getx/data/remote/response/movie_response.dart';
import 'package:movies_getx/data/remote/response/movies_response.dart';
import 'package:movies_getx/ui/moviedetail/model/movie_detail.dart';
import 'package:movies_getx/ui/movielist/model/movie_item.dart';

class MovieMapper {
  List<MovieItem> toMovieList(
      MoviesResponse moviesResponse, List<Genres> genres) {
    List<MovieItem> list = [];
    moviesResponse.results?.forEach((element) {
      var movieItem = toMovieItem(element);
      movieItem.genres = getGenresByIds(genres, element.genreIds);
      list.add(movieItem);
    });
    return list;
  }

  MovieItem toMovieItem(Results results) {
    return MovieItem.fromJson(results.toJson());
  }

  MovieDetail toMovieDetail(MovieResponse movieResponse) {
    return MovieDetail.fromJson(movieResponse.toJson());
  }

  String getGenresByIds(List<Genres> genres, List<int>? genreIds) {
    if (genreIds == null || genreIds.isEmpty) {
      return ""; // Handle empty or null genreIds gracefully
    }

    final formattedGenres = genreIds
        .map((id) => genres.firstWhere((genre) => genre.id == id).name ?? "")
        .join(", "); // Use join for efficient concatenation

    return formattedGenres.trimRight(); // Remove trailing comma if present
  }
}
