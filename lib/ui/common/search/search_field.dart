import 'package:flutter/material.dart';
import 'package:movies_getx/ui/common/search/search_debouncer.dart';
import 'package:movies_getx/ui/common/search/search_type_alias.dart';

class SearchField<T> extends StatelessWidget {
  final String hintText;
  final Searchable onSearch;

  const SearchField({
    Key? key,
    required this.hintText,
    required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SearchDebounce debounce = SearchDebounce();
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.search),
        hintText: hintText,
      ),
      onChanged: (value) {
        debounce.run(() {
          onSearch(value);
        });
      },
    );
  }
}
