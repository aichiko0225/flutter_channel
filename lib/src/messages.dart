
// ignore_for_file: unnecessary_null_comparison

class CommonParams {

  Map<Object, Object?>? arguments;
  String? key;

  Object encode() {
    final Map<Object, Object?> pigeonMap = <Object, Object?>{};
    if (arguments != null) {
      pigeonMap['arguments'] = arguments ?? {};
    }
    pigeonMap['key'] = key ?? '';
    return pigeonMap;
  }

  static CommonParams decode(dynamic message) {
    var pigeonMap = message;
    assert(pigeonMap != null, 'pigeonMap was null');
    return CommonParams()
      ..arguments = Map<Object, Object?>.from(pigeonMap['arguments'])
      ..key = pigeonMap['key'] as String;
  }
}

class ResponseParams {

  Map<Object, Object?>? arguments;
  String? methodName;

  Object encode() {
    final Map<Object, Object?> pigeonMap = <Object, Object?>{};
    if (arguments != null) {
      pigeonMap['arguments'] = arguments ?? {};
    }
    pigeonMap['methodName'] = methodName ?? '';
    return pigeonMap;
  }

  static ResponseParams decode(dynamic message) {
    var pigeonMap = message;
    assert(pigeonMap != null, 'pigeonMap was null');
    return ResponseParams()
      ..arguments = Map<Object, Object?>.from(pigeonMap['arguments'])
      ..methodName = pigeonMap['methodName'] as String?;
  }
}