class StarWarsCharacter {

  final String name;
  final int height;
  final int mass;
  final String birthYear;
  final String homeworld;
  final String selfUrl;

  StarWarsCharacter(this.name, this.height, this.mass, this.birthYear,
      this.homeworld, this.selfUrl);

  factory StarWarsCharacter.fromJson(Map<String, dynamic> data) {
    return StarWarsCharacter(data['name'], int.parse(data['height']), int.parse(data['mass']), data['birth_year'], data['homeworld'], data['url']);
  }

}