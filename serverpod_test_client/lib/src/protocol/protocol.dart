/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'example.dart' as _i2;
import 'image_data.dart' as _i3;
import 'image_update.dart' as _i4;
import 'user_class.dart' as _i5;
import 'package:serverpod_test_client/src/protocol/user_class.dart' as _i6;
export 'example.dart';
export 'image_data.dart';
export 'image_update.dart';
export 'user_class.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Example) {
      return _i2.Example.fromJson(data, this) as T;
    }
    if (t == _i3.ImageData) {
      return _i3.ImageData.fromJson(data, this) as T;
    }
    if (t == _i4.ImageUpdate) {
      return _i4.ImageUpdate.fromJson(data, this) as T;
    }
    if (t == _i5.User) {
      return _i5.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Example?>()) {
      return (data != null ? _i2.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.ImageData?>()) {
      return (data != null ? _i3.ImageData.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.ImageUpdate?>()) {
      return (data != null ? _i4.ImageUpdate.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.User?>()) {
      return (data != null ? _i5.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i6.User>) {
      return (data as List).map((e) => deserialize<_i6.User>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Example) {
      return 'Example';
    }
    if (data is _i3.ImageData) {
      return 'ImageData';
    }
    if (data is _i4.ImageUpdate) {
      return 'ImageUpdate';
    }
    if (data is _i5.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Example') {
      return deserialize<_i2.Example>(data['data']);
    }
    if (data['className'] == 'ImageData') {
      return deserialize<_i3.ImageData>(data['data']);
    }
    if (data['className'] == 'ImageUpdate') {
      return deserialize<_i4.ImageUpdate>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i5.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
