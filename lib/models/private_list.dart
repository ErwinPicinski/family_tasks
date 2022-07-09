class Private_list{
  int? id;
  final String title;
  DateTime creationDate;
  bool isDone;

  Private_list(
    {
      this.id,
      required this.title,
      required this.creationDate,
      required this.isDone

    }
  );

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'title' : title,
      'creationDate' : creationDate.toString(),
      'isDone' : isDone ? 1 : 0,
    };
  }
}
