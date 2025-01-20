class TodoModel{
  String name;
  bool complete;

  TodoModel(this.name, this.complete);

  @override
  String toString() {
    return 'TodoModel{name: $name, complete: $complete}';
  }
}