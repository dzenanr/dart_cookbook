library links;

class Link {
  String name;
  Uri url;

  Link(this.name, String link) {
    url = Uri.parse(link);
  }
}

class Links<Link> {
  var _linkList = new List<Link>();

  add(Link link) {
    _linkList.add(link);
  }

  List<Link> toList() => _linkList;
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
