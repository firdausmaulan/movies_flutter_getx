class MoviesRequest {
  String? query;
  int? page;

  MoviesRequest({this.query, this.page});

  MoviesRequest.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    page = json['page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['query'] = this.query;
    data['page'] = this.page;
    return data;
  }
}