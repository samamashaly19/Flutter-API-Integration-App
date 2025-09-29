class Character {
  final int id;
  final String name;
  final String? profilePath;
  final double popularity;
  final List<int> knownFor;

  Character({
    required this.id,
    required this.name,
    this.profilePath,
    required this.popularity,
    required this.knownFor,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      profilePath: json['profile_path'],
      popularity: json['popularity']?.toDouble() ?? 0.0,
      knownFor: List<int>.from(json['known_for']?.map((x) => x['id']) ?? []),
    );
  }

  String get imageUrl {
    if (profilePath != null) {
      return 'https://image.tmdb.org/t/p/w500$profilePath';
    }
    return 'https://via.placeholder.com/150x200/cccccc/969696?text=No+Image';
  }

  String get description {
    return 'Popularity: ${popularity.toStringAsFixed(1)} | Known for: ${knownFor.length} works';
  }
}