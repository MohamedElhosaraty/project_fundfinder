class CompanyName {
  final String? name;

  CompanyName({ this.name});

  factory CompanyName.fromJson(Map<String, dynamic> json) {
    return CompanyName(
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }
}