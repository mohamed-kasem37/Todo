class Task {
  static const String collectionName = 'task';
  String? id;
  String? title;
  String? describtion;
  DateTime? datetime;
  bool? isDone;

  Task({
    this.id,
    this.title,
    this.describtion,
    this.datetime,
    this.isDone,
  });

  Task.fromFireStore(Map<String, dynamic> data)
      : this(
          id: data['id'],
          title: data['title'],
          describtion: data['desc'],
          datetime: DateTime.fromMicrosecondsSinceEpoch(data['datetime']),
          isDone: data['is done'],
        );

  Map<String, dynamic> tofirestore() {
    return {
      'id': id,
      'title': title,
      'describtion': describtion,
      'datetime': datetime?.millisecondsSinceEpoch,
      'isDone': isDone,
    };
  }
}
