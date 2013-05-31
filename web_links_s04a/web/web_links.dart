import 'package:web_links/links.dart';
import 'package:web_ui/web_ui.dart';

import 'dart:async';

@observable
List<Link> links;

add(List<Link> links) {
  var link = new Link('GitHub', 'https://github.com');
  links.add(link);
}

/**
 * Learn about the Web UI package by visiting
 * http://www.dartlang.org/articles/web-ui/ .
 */
void main() {
  links = toObservable(Model.one().links);
  // create several links
  var link1 = new Link('On Dart', 'http://ondart.me/');
  var link2 = new Link('Web UI', 'http://www.dartlang.org/articles/web-ui/');
  var link3 = new Link('Books To Read', 'http://www.goodreads.com/');
  links.add(link1);
  links.add(link2);
  links.add(link3);

  new Timer.periodic(const Duration(milliseconds: 1000), (t) => add(links));
}
