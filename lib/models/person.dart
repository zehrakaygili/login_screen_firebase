import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person {
  final String? age;
  final String? name;

  Person({
    this.age,
    this.name,
  });

  Person copyWith({
    String? age,
    String? name,
  }) {
    return Person(
      age: age ?? this.age,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': age,
      'name': name,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      age: map['age'] != null ? map['age'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);
}
