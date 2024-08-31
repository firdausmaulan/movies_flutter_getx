import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_getx/ui/movielist/model/movie_item.dart';
import 'package:movies_getx/util/constant.dart';

class MovieCard extends StatelessWidget {
  final MovieItem movieItem;

  const MovieCard({Key? key, required this.movieItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          CachedNetworkImage(
            width: 80,
            height: 120,
            fit: BoxFit.cover,
            imageUrl: "${Constant.imageUrl}${movieItem.posterPath}",
            placeholder: (context, url) => const Center(
                child: SizedBox(
              height: 40,
              width: 40,
              child: CircularProgressIndicator(),
            )),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Expanded(
            child: Container(
              height: 120,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movieItem.title.toString(),
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text("Rating : ${movieItem.voteAverage?.toStringAsFixed(1)} / 10",
                        style: const TextStyle(fontSize: 13)),
                    Text("Release Date : ${movieItem.releaseDate.toString()}",
                        style: const TextStyle(fontSize: 13)),
                    Text(
                      "Genre : ${movieItem.genres.toString()}",
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
