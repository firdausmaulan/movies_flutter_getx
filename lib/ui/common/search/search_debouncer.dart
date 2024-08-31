import 'dart:async';
import 'dart:ui';

class SearchDebounce {
  final int milliseconds;

  Timer? _timer;

  SearchDebounce({this.milliseconds = 1000});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);

  }
}