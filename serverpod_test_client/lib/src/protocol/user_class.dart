/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class User extends _i1.SerializableEntity {
  User({
    this.id,
    required this.name,
    required this.image,
    required this.lastName,
    required this.gender,
    required this.preference,
  });

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      image:
          serializationManager.deserialize<String>(jsonSerialization['image']),
      lastName: serializationManager
          .deserialize<String>(jsonSerialization['lastName']),
      gender:
          serializationManager.deserialize<String>(jsonSerialization['gender']),
      preference: serializationManager
          .deserialize<bool>(jsonSerialization['preference']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String image;

  String lastName;

  String gender;

  bool preference;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'lastName': lastName,
      'gender': gender,
      'preference': preference,
    };
  }
}
