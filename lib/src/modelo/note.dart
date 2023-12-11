class Note {
  final int id;
  final String title;
  final String content;

  Note(this.id, this.title, this.content, {required int id});
  Map<String, dynamic> toMap() {
    return {"id": id, "title": title, "content": content};
  }
}
