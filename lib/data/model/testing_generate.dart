import 'dart:convert';
import 'package:flutter/foundation.dart';

class TestGenerate {
  final int code;
  final String status;
  final List<Data> data;
  TestGenerate({
    required this.code,
    required this.status,
    required this.data,
  });

  TestGenerate copyWith({
    int? code,
    String? status,
    List<Data>? data,
  }) {
    return TestGenerate(
      code: code ?? this.code,
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'status': status,
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory TestGenerate.fromMap(Map<String, dynamic> map) {
    return TestGenerate(
      code: map['code'],
      status: map['status'],
      data: List<Data>.from(map['data']?.map((x) => Data.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory TestGenerate.fromJson(String source) =>
      TestGenerate.fromMap(json.decode(source));

  @override
  String toString() =>
      'Test_generate(code: $code, status: $status, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TestGenerate &&
        other.code == code &&
        other.status == status &&
        listEquals(other.data, data);
  }

  @override
  int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
}

class Data {
  toMap() {}
  static fromMap(x) {}
}
