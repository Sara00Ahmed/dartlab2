//  Implement the extension function getFullInfo() returning a string value. It should
// list the properties of the class as in the example below and add "Unspecified" if
// the corresponding value is null:
//  • name:Alice
//  • email: alice@gmail.com
//  • country: Germany
//  • city: Munich
//  • street: Unspecified


extension FullInfoExtension on dynamic {
  String getFullInfo() {
    final properties = {
      'name': (this).name,
      'email': (this).email,
      'country': (this).country,
      'city': (this).city,
      'street': (this).street,
    };

    return properties.entries
        .map((entry) => '• ${entry.key}: ${entry.value ?? "Unspecified"}')
        .join('\n');
  }
}

class User {
  final String? name;
  final String? email;
  final String? country;
  final String? city;
  final String? street;

  User({
    this.name,
    this.email,
    this.country,
    this.city,
    this.street,
  });
}

void main() {
  final user = User(
    name: 'Alice',
    email: 'alice@gmail.com',
    country: 'Germany',
    city: 'Munich',
    // street left null
  );

  print(user.getFullInfo());
}