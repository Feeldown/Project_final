class Coffee {
  final String title;
  final String description;
  final List<String> ingredients;
  final String image;
  final int id;

  Coffee({required this.title, required this.description, required this.ingredients, required this.image, required this.id});

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      title: json['title'],
      description: json['description'],
      ingredients: List<String>.from(json['ingredients']),
      image: json['image'],
      id: json['id'],
    );
  }
}
