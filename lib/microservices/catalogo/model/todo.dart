class Todo {
  final int id;
  final String nombre;

  final String createdAt;
  final String? updatedAt;
  Todo ({
    required this.id,
    required this.nombre,
    required this.createdAt,
    this.updatedAt,
});

}