class User {
  final String kind;
  final String idToken;
  final String email;
  final String refreshToken;
  final String expiresIn;
  final String localId;

  const User({
    required this.kind,
    required this.idToken,
    required this.email,
    required this.refreshToken,
    required this.expiresIn,
    required this.localId,
  });

  factory User.fromJson(dynamic data) {
    return User(
      kind: data["kind"],
      idToken: data["idToken"],
      email: data["email"],
      refreshToken: data["refreshToken"],
      expiresIn: data["expiresIn"],
      localId: data["localId"],
    );
  }
}
