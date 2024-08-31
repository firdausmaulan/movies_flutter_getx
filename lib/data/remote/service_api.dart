
import 'package:movies_getx/data/remote/network_api.dart';
import 'package:movies_getx/data/remote/request/movies_request.dart';
import 'package:movies_getx/data/remote/response/genres_response.dart';
import 'package:movies_getx/data/remote/response/movie_response.dart';
import 'package:movies_getx/data/remote/response/movies_response.dart';
import 'package:movies_getx/util/constant.dart';

class ServiceApi {
  final _networkApi = NetworkApi();

  Future<GenresResponse> getGenres() async {
    var result = await _networkApi.get(Constant.pathGenre, {});
    return GenresResponse.fromJson(result);
  }

  Future<MoviesResponse> getMovies(MoviesRequest request) async {
    var result = await _networkApi.get(Constant.pathMovieList, request.toJson());
    return MoviesResponse.fromJson(result);
  }

  Future<MovieResponse> getMovieDetail(int? movieId) async {
    var result = await _networkApi.get(Constant.pathMovieDetail + movieId.toString(), {});
    return MovieResponse.fromJson(result);
  }
}
