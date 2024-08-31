import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_getx/ui/common/search/search_field.dart';
import 'package:movies_getx/ui/movielist/widget/movie_card.dart';
import 'package:movies_getx/util/constant.dart';

import 'movie_list_controller.dart';

class MovieListPage extends StatelessWidget {
  MovieListPage({super.key});

  final MovieListController controller = Get.put(MovieListController());

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    scrollController.addListener(() {
      if (controller.movies.isNotEmpty) {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          controller.loadMore();
        }
      }
    });

    controller.searchMovies(Constant.defaultQuery);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Movie List'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SearchField(
                hintText: "Search Movie",
                onSearch: (query) => {controller.searchMovies(query)},
              ),
              Obx(() => Expanded(
                    child: controller.movies.isEmpty
                        ? const Text('No movies found')
                        : ListView.builder(
                            itemCount: controller.movies.length,
                            controller: scrollController,
                            itemBuilder: (context, index) {
                              final movieItem = controller.movies[index];
                              return InkWell(
                                onTap: () => {
                                  Get.toNamed(
                                      '/detail',
                                      arguments: {'movieId': movieItem.id}
                                  )
                                },
                                child: MovieCard(
                                  movieItem: movieItem,
                                ),
                              );
                            },
                          ),
                  ))
            ],
          ),
        ));
  }
}
