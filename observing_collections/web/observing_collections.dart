library observe_collections;

// http://observables-articles.dart-lang.appspot.com/web-ui/observables/

import 'package:web_ui/web_ui.dart';

//final List<DateTime> timestamps = toObservable([]);
final List<DateTime> timestamps = [];

void addTimestamp() {
  timestamps.add(new DateTime.now());
}

void clear() {
  timestamps.clear();
}

main() {}