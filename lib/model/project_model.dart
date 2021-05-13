class ProjectModel {
  final String title;
  final String? duration;
  final String description;
  final String textPrimary;
  final String linkPrimary;

  final String? textSecondary;
  final String? linkSecondary;

  final String? iconUrl;

  ProjectModel({
    required this.title,
    this.iconUrl,
    this.duration,
    required this.description,
    required this.textPrimary,
    required this.linkPrimary,
    this.textSecondary,
    this.linkSecondary,
  });
}
