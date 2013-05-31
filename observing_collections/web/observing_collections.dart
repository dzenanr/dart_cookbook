library observe_collections;

// http://observables-articles.dart-lang.appspot.com/web-ui/observables/
// https://mail.google.com/mail/u/0/?ui=2&zx=yevdhge8k5yw&shva=1#inbox/13efcaff4a796f07

import 'package:web_ui/web_ui.dart';

@observable
String text;

final List<DateTime> timestamps = toObservable([]);
//final List<DateTime> timestamps = [];

void addTimestamp() {
  timestamps.add(new DateTime.now());
}

void clear() {
  timestamps.clear();
}

main() {}