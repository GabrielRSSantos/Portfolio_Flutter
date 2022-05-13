class Model {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Model(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  static Model fromJson(Map<String, dynamic> json) => Model(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed']);

  Map<String, dynamic> toJson() =>
      {'userId': userId, 'id': id, 'title': title, 'completed': completed};
}


