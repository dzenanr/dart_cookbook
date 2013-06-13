library links;

class Link {
  String name;
  Uri url;

  Link(this.name, String link) {
    url = Uri.parse(link);
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

