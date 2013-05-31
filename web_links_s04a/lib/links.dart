library links;

import 'dart:uri';

class Link {
  String name;
  Uri url;

  Link(this.name, String link) {
    url = new Uri(link);
  }
}

class Model {
  var links = new List<Link>();

  static Model model;

  Model.private();

  static Model one() {
    if (model == null) {
      model = new Model.private();
    }
    return model;
  }
}

