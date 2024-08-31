class MoviesResponse {
  List<Results>? _results;
  int? _page;
  int? _totalPages;
  int? _totalResults;

  MoviesResponse(
      {List<Results>? results, int? page, int? totalPages, int? totalResults}) {
    if (results != null) {
      this._results = results;
    }
    if (page != null) {
      this._page = page;
    }
    if (totalPages != null) {
      this._totalPages = totalPages;
    }
    if (totalResults != null) {
      this._totalResults = totalResults;
    }
  }

  List<Results>? get results => _results;
  set results(List<Results>? results) => _results = results;
  int? get page => _page;
  set page(int? page) => _page = page;
  int? get totalPages => _totalPages;
  set totalPages(int? totalPages) => _totalPages = totalPages;
  int? get totalResults => _totalResults;
  set totalResults(int? totalResults) => _totalResults = totalResults;

  MoviesResponse.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      _results = <Results>[];
      json['results'].forEach((v) {
        _results!.add(new Results.fromJson(v));
      });
    }
    _page = json['page'];
    _totalPages = json['total_pages'];
    _totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._results != null) {
      data['results'] = this._results!.map((v) => v.toJson()).toList();
    }
    data['page'] = this._page;
    data['total_pages'] = this._totalPages;
    data['total_results'] = this._totalResults;
    return data;
  }
}

class Results {
  String? _backdropPath;
  List<int>? _genreIds;
  int? _id;
  String? _originalLanguage;
  String? _originalTitle;
  String? _overview;
  double? _popularity;
  String? _posterPath;
  String? _releaseDate;
  String? _title;
  bool? _video;
  double? _voteAverage;
  int? _voteCount;

  Results(
      {String? backdropPath,
        List<int>? genreIds,
        int? id,
        String? originalLanguage,
        String? originalTitle,
        String? overview,
        double? popularity,
        String? posterPath,
        String? releaseDate,
        String? title,
        bool? video,
        double? voteAverage,
        int? voteCount}) {
    if (backdropPath != null) {
      this._backdropPath = backdropPath;
    }
    if (genreIds != null) {
      this._genreIds = genreIds;
    }
    if (id != null) {
      this._id = id;
    }
    if (originalLanguage != null) {
      this._originalLanguage = originalLanguage;
    }
    if (originalTitle != null) {
      this._originalTitle = originalTitle;
    }
    if (overview != null) {
      this._overview = overview;
    }
    if (popularity != null) {
      this._popularity = popularity;
    }
    if (posterPath != null) {
      this._posterPath = posterPath;
    }
    if (releaseDate != null) {
      this._releaseDate = releaseDate;
    }
    if (title != null) {
      this._title = title;
    }
    if (video != null) {
      this._video = video;
    }
    if (voteAverage != null) {
      this._voteAverage = voteAverage;
    }
    if (voteCount != null) {
      this._voteCount = voteCount;
    }
  }

  String? get backdropPath => _backdropPath;
  set backdropPath(String? backdropPath) => _backdropPath = backdropPath;
  List<int>? get genreIds => _genreIds;
  set genreIds(List<int>? genreIds) => _genreIds = genreIds;
  int? get id => _id;
  set id(int? id) => _id = id;
  String? get originalLanguage => _originalLanguage;
  set originalLanguage(String? originalLanguage) =>
      _originalLanguage = originalLanguage;
  String? get originalTitle => _originalTitle;
  set originalTitle(String? originalTitle) => _originalTitle = originalTitle;
  String? get overview => _overview;
  set overview(String? overview) => _overview = overview;
  double? get popularity => _popularity;
  set popularity(double? popularity) => _popularity = popularity;
  String? get posterPath => _posterPath;
  set posterPath(String? posterPath) => _posterPath = posterPath;
  String? get releaseDate => _releaseDate;
  set releaseDate(String? releaseDate) => _releaseDate = releaseDate;
  String? get title => _title;
  set title(String? title) => _title = title;
  bool? get video => _video;
  set video(bool? video) => _video = video;
  double? get voteAverage => _voteAverage;
  set voteAverage(double? voteAverage) => _voteAverage = voteAverage;
  int? get voteCount => _voteCount;
  set voteCount(int? voteCount) => _voteCount = voteCount;

  Results.fromJson(Map<String, dynamic> json) {
    _backdropPath = json['backdrop_path'];
    _genreIds = json['genre_ids']?.cast<int>();
    _id = json['id'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _title = json['title'];
    _video = json['video'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backdrop_path'] = this._backdropPath;
    data['genre_ids'] = this._genreIds;
    data['id'] = this._id;
    data['original_language'] = this._originalLanguage;
    data['original_title'] = this._originalTitle;
    data['overview'] = this._overview;
    data['popularity'] = this._popularity;
    data['poster_path'] = this._posterPath;
    data['release_date'] = this._releaseDate;
    data['title'] = this._title;
    data['video'] = this._video;
    data['vote_average'] = this._voteAverage;
    data['vote_count'] = this._voteCount;
    return data;
  }
}