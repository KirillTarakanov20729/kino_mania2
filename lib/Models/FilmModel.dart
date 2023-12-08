class Film {
  final String id;
  final String genreId;
  final String producerId;
  final List<String> actorIds;
  final String title;
  final DateTime releaseDate;
  final String coverImage; 
  final String desc;

  Film({
    required this.id,
    required this.genreId,
    required this.producerId,
    required this.actorIds,
    required this.title,
    required this.releaseDate,
    required this.coverImage,
    required this.desc
  });
}
