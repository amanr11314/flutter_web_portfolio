class ProjectModel {
  final String title;
  final String duration;
  final String description;
  final String textPrimary;
  final String linkPrimary;

  final String textSecondary;
  final String linkSecondary;

  final String iconUrl;

  ProjectModel({
    this.title,
    this.iconUrl,
    this.duration,
    this.description,
    this.textPrimary,
    this.linkPrimary,
    this.textSecondary,
    this.linkSecondary,
  });
}
