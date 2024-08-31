import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_getx/ui/moviedetail/movie_detail_controller.dart';
import 'package:movies_getx/util/constant.dart';

class MovieDetailPage extends StatelessWidget {
  MovieDetailPage({super.key});

  final MovieDetailController controller = Get.put(MovieDetailController());

  @override
  Widget build(BuildContext context) {
    controller.getMovieDetail();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Movie Detail"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                height: 240,
                fit: BoxFit.cover,
                imageUrl:
                    "${Constant.imageUrl}${controller.movie.value.backdropPath}",
                placeholder: (context, url) => const Center(
                    child: SizedBox(
                  height: 40,
                  width: 40,
                  child: CircularProgressIndicator(),
                )),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    const Text("Title",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(controller.movie.value.title.toString()),
                    const SizedBox(height: 8),
                    const Text("Overview",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(controller.movie.value.overview.toString())
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
