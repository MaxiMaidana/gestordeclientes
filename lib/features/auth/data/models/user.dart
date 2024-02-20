class User {
  final int id;
  final String name;
  final String rol;
  final String email;
  final String username;

  const User(
      {required this.email,
      required this.id,
      required this.name,
      required this.username,
      required this.rol});

  User copyWith(
          {String? email,
          int? id,
          String? rol,
          String? name,
          String? username}) =>
      User(
          email: email ?? this.email,
          id: id ?? this.id,
          name: name ?? this.name,
          username: username ?? this.username,
          rol: rol ?? this.rol);

  factory User.init() =>
      const User(email: '', id: 0, name: '', rol: '', username: '');
}
