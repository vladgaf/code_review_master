import 'dart:convert';
import 'package:code_review_master/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class JsonUtils {
  static Map<String, dynamic>? parseJsonSafe(String jsonString) {
    try {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }

  static String formatJson(Map<String, dynamic> json) {
    const encoder = JsonEncoder.withIndent('  ');
    return encoder.convert(json);
  }

  static Either<Failure, Map<String, dynamic>> parseJsonWithFailure(
    String jsonString,
  ) {
    try {
      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      return Right(json);
    } on FormatException catch (e) {
      return Left(
        JsonParseFailure(message: 'Invalid JSON format: ${e.message}'),
      );
    } catch (e) {
      return Left(
        UnknownFailure(message: 'Failed to parse JSON: $e'),
      );
    }
  }
}
