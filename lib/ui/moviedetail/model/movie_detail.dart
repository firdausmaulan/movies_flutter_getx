
import 'package:movies_getx/data/remote/response/genres_response.dart';

class MovieDetail {
  bool? _adult;
  String? _backdropPath;
  BelongsToCollection? _belongsToCollection;
  int? _budget;
  List<Genres>? _genres;
  String? _homepage;
  int? _id;
  String? _imdbId;
  List<String>? _originCountry;
  String? _originalLanguage;
  String? _originalTitle;
  String? _overview;
  double? _popularity;
  String? _posterPath;
  List<ProductionCompanies>? _productionCompanies;
  List<ProductionCountries>? _productionCountries;
  String? _releaseDate;
  int? _revenue;
  int? _runtime;
  List<SpokenLanguages>? _spokenLanguages;
  String? _status;
  String? _tagline;
  String? _title;
  bool? _video;
  double? _voteAverage;
  int? _voteCount;

  MovieDetail(
      {bool? adult,
        String? backdropPath,
        BelongsToCollection? belongsToCollection,
        int? budget,
        List<Genres>? genres,
        String? homepage,
        int? id,
        String? imdbId,
        List<String>? originCountry,
        String? originalLanguage,
        String? originalTitle,
        String? overview,
        double? popularity,
        String? posterPath,
        List<ProductionCompanies>? productionCompanies,
        List<ProductionCountries>? productionCountries,
        String? releaseDate,
        int? revenue,
        int? runtime,
        List<SpokenLanguages>? spokenLanguages,
        String? status,
        String? tagline,
        String? title,
        bool? video,
        double? voteAverage,
        int? voteCount}) {
    if (adult != null) {
      this._adult = adult;
    }
    if (backdropPath != null) {
      this._backdropPath = backdropPath;
    }
    if (belongsToCollection != null) {
      this._belongsToCollection = belongsToCollection;
    }
    if (budget != null) {
      this._budget = budget;
    }
    if (genres != null) {
      this._genres = genres;
    }
    if (homepage != null) {
      this._homepage = homepage;
    }
    if (id != null) {
      this._id = id;
    }
    if (imdbId != null) {
      this._imdbId = imdbId;
    }
    if (originCountry != null) {
      this._originCountry = originCountry;
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
    if (productionCompanies != null) {
      this._productionCompanies = productionCompanies;
    }
    if (productionCountries != null) {
      this._productionCountries = productionCountries;
    }
    if (releaseDate != null) {
      this._releaseDate = releaseDate;
    }
    if (revenue != null) {
      this._revenue = revenue;
    }
    if (runtime != null) {
      this._runtime = runtime;
    }
    if (spokenLanguages != null) {
      this._spokenLanguages = spokenLanguages;
    }
    if (status != null) {
      this._status = status;
    }
    if (tagline != null) {
      this._tagline = tagline;
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

  bool? get adult => _adult;
  set adult(bool? adult) => _adult = adult;
  String? get backdropPath => _backdropPath;
  set backdropPath(String? backdropPath) => _backdropPath = backdropPath;
  BelongsToCollection? get belongsToCollection => _belongsToCollection;
  set belongsToCollection(BelongsToCollection? belongsToCollection) =>
      _belongsToCollection = belongsToCollection;
  int? get budget => _budget;
  set budget(int? budget) => _budget = budget;
  List<Genres>? get genres => _genres;
  set genres(List<Genres>? genres) => _genres = genres;
  String? get homepage => _homepage;
  set homepage(String? homepage) => _homepage = homepage;
  int? get id => _id;
  set id(int? id) => _id = id;
  String? get imdbId => _imdbId;
  set imdbId(String? imdbId) => _imdbId = imdbId;
  List<String>? get originCountry => _originCountry;
  set originCountry(List<String>? originCountry) =>
      _originCountry = originCountry;
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
  List<ProductionCompanies>? get productionCompanies => _productionCompanies;
  set productionCompanies(List<ProductionCompanies>? productionCompanies) =>
      _productionCompanies = productionCompanies;
  List<ProductionCountries>? get productionCountries => _productionCountries;
  set productionCountries(List<ProductionCountries>? productionCountries) =>
      _productionCountries = productionCountries;
  String? get releaseDate => _releaseDate;
  set releaseDate(String? releaseDate) => _releaseDate = releaseDate;
  int? get revenue => _revenue;
  set revenue(int? revenue) => _revenue = revenue;
  int? get runtime => _runtime;
  set runtime(int? runtime) => _runtime = runtime;
  List<SpokenLanguages>? get spokenLanguages => _spokenLanguages;
  set spokenLanguages(List<SpokenLanguages>? spokenLanguages) =>
      _spokenLanguages = spokenLanguages;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get tagline => _tagline;
  set tagline(String? tagline) => _tagline = tagline;
  String? get title => _title;
  set title(String? title) => _title = title;
  bool? get video => _video;
  set video(bool? video) => _video = video;
  double? get voteAverage => _voteAverage;
  set voteAverage(double? voteAverage) => _voteAverage = voteAverage;
  int? get voteCount => _voteCount;
  set voteCount(int? voteCount) => _voteCount = voteCount;

  MovieDetail.fromJson(Map<String, dynamic> json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    _belongsToCollection = json['belongs_to_collection'] != null
        ? new BelongsToCollection.fromJson(json['belongs_to_collection'])
        : null;
    _budget = json['budget'];
    if (json['genres'] != null) {
      _genres = <Genres>[];
      json['genres'].forEach((v) {
        _genres!.add(new Genres.fromJson(v));
      });
    }
    _homepage = json['homepage'];
    _id = json['id'];
    _imdbId = json['imdb_id'];
    _originCountry = json['origin_country']?.cast<String>();
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    if (json['production_companies'] != null) {
      _productionCompanies = <ProductionCompanies>[];
      json['production_companies'].forEach((v) {
        _productionCompanies!.add(new ProductionCompanies.fromJson(v));
      });
    }
    if (json['production_countries'] != null) {
      _productionCountries = <ProductionCountries>[];
      json['production_countries'].forEach((v) {
        _productionCountries!.add(new ProductionCountries.fromJson(v));
      });
    }
    _releaseDate = json['release_date'];
    _revenue = json['revenue'];
    _runtime = json['runtime'];
    if (json['spoken_languages'] != null) {
      _spokenLanguages = <SpokenLanguages>[];
      json['spoken_languages'].forEach((v) {
        _spokenLanguages!.add(new SpokenLanguages.fromJson(v));
      });
    }
    _status = json['status'];
    _tagline = json['tagline'];
    _title = json['title'];
    _video = json['video'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this._adult;
    data['backdrop_path'] = this._backdropPath;
    if (this._belongsToCollection != null) {
      data['belongs_to_collection'] = this._belongsToCollection!.toJson();
    }
    data['budget'] = this._budget;
    if (this._genres != null) {
      data['genres'] = this._genres!.map((v) => v.toJson()).toList();
    }
    data['homepage'] = this._homepage;
    data['id'] = this._id;
    data['imdb_id'] = this._imdbId;
    data['origin_country'] = this._originCountry;
    data['original_language'] = this._originalLanguage;
    data['original_title'] = this._originalTitle;
    data['overview'] = this._overview;
    data['popularity'] = this._popularity;
    data['poster_path'] = this._posterPath;
    if (this._productionCompanies != null) {
      data['production_companies'] =
          this._productionCompanies!.map((v) => v.toJson()).toList();
    }
    if (this._productionCountries != null) {
      data['production_countries'] =
          this._productionCountries!.map((v) => v.toJson()).toList();
    }
    data['release_date'] = this._releaseDate;
    data['revenue'] = this._revenue;
    data['runtime'] = this._runtime;
    if (this._spokenLanguages != null) {
      data['spoken_languages'] =
          this._spokenLanguages!.map((v) => v.toJson()).toList();
    }
    data['status'] = this._status;
    data['tagline'] = this._tagline;
    data['title'] = this._title;
    data['video'] = this._video;
    data['vote_average'] = this._voteAverage;
    data['vote_count'] = this._voteCount;
    return data;
  }
}

class BelongsToCollection {
  int? _id;
  String? _name;
  String? _posterPath;
  String? _backdropPath;

  BelongsToCollection(
      {int? id, String? name, String? posterPath, String? backdropPath}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (posterPath != null) {
      this._posterPath = posterPath;
    }
    if (backdropPath != null) {
      this._backdropPath = backdropPath;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get posterPath => _posterPath;
  set posterPath(String? posterPath) => _posterPath = posterPath;
  String? get backdropPath => _backdropPath;
  set backdropPath(String? backdropPath) => _backdropPath = backdropPath;

  BelongsToCollection.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _posterPath = json['poster_path'];
    _backdropPath = json['backdrop_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['poster_path'] = this._posterPath;
    data['backdrop_path'] = this._backdropPath;
    return data;
  }
}

class ProductionCompanies {
  int? _id;
  String? _logoPath;
  String? _name;
  String? _originCountry;

  ProductionCompanies(
      {int? id, String? logoPath, String? name, String? originCountry}) {
    if (id != null) {
      this._id = id;
    }
    if (logoPath != null) {
      this._logoPath = logoPath;
    }
    if (name != null) {
      this._name = name;
    }
    if (originCountry != null) {
      this._originCountry = originCountry;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get logoPath => _logoPath;
  set logoPath(String? logoPath) => _logoPath = logoPath;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get originCountry => _originCountry;
  set originCountry(String? originCountry) => _originCountry = originCountry;

  ProductionCompanies.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _logoPath = json['logo_path'];
    _name = json['name'];
    _originCountry = json['origin_country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['logo_path'] = this._logoPath;
    data['name'] = this._name;
    data['origin_country'] = this._originCountry;
    return data;
  }
}

class ProductionCountries {
  String? _iso31661;
  String? _name;

  ProductionCountries({String? iso31661, String? name}) {
    if (iso31661 != null) {
      this._iso31661 = iso31661;
    }
    if (name != null) {
      this._name = name;
    }
  }

  String? get iso31661 => _iso31661;
  set iso31661(String? iso31661) => _iso31661 = iso31661;
  String? get name => _name;
  set name(String? name) => _name = name;

  ProductionCountries.fromJson(Map<String, dynamic> json) {
    _iso31661 = json['iso_3166_1'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iso_3166_1'] = this._iso31661;
    data['name'] = this._name;
    return data;
  }
}

class SpokenLanguages {
  String? _englishName;
  String? _iso6391;
  String? _name;

  SpokenLanguages({String? englishName, String? iso6391, String? name}) {
    if (englishName != null) {
      this._englishName = englishName;
    }
    if (iso6391 != null) {
      this._iso6391 = iso6391;
    }
    if (name != null) {
      this._name = name;
    }
  }

  String? get englishName => _englishName;
  set englishName(String? englishName) => _englishName = englishName;
  String? get iso6391 => _iso6391;
  set iso6391(String? iso6391) => _iso6391 = iso6391;
  String? get name => _name;
  set name(String? name) => _name = name;

  SpokenLanguages.fromJson(Map<String, dynamic> json) {
    _englishName = json['english_name'];
    _iso6391 = json['iso_639_1'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['english_name'] = this._englishName;
    data['iso_639_1'] = this._iso6391;
    data['name'] = this._name;
    return data;
  }
}