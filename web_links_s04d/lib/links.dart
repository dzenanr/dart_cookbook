library links;

class Link {
  String name;
  Uri url;

  Link(this.name, String link) {
    url = Uri.parse(link);
  }
}

class Links<Link> implements List<Link> {
  var _linkList = new List<Link>();

  add(Link link) {
    _linkList.add(link);
  }

  Iterator<Link> get iterator => _linkList.iterator;

  List<Link> toList({bool growable: true}) => _linkList.toList({});
}

class Model {
  var links = new Links<Link>();

  static Model model;

  Model.private();

  static Model one() {
    if (model == null) {
      model = new Model.private();
    }
    return model;
  }
}
