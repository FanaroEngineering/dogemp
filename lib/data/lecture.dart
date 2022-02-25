class Lecture {
  final String name;
  final DateTime date;
  final Uri? sgfLink;
  final Uri? twitchLink;
  final Uri? youtubeLink;

  const Lecture({
    required this.name,
    required this.date,
    this.sgfLink,
    this.twitchLink,
    this.youtubeLink});
}