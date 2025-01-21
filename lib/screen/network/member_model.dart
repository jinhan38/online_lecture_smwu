class MemberModel {
  String email;
  String description;

  MemberModel(this.email, this.description);

  @override
  String toString() {
    return 'MemberModel{email: $email, description: $description}';
  }
}
