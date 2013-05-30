import 'package:web_ui/web_ui.dart';

// http://observables-articles.dart-lang.appspot.com/web-ui/observables/

@observable
class Person {
  String name;
  Address address;
}

@observable
class Address {
  String city;
}

@observable
Person person;

main() {
  person = new Person()
    ..name = 'Clark Kent'
    ..address = (
        new Address()
          ..city = 'Metropolis'
    );
}