import 'dart:io';
import 'package:path/path.dart' as p;

class FileUtils {
  static Future<List<String>> listDirectories(String path) async {
    final dir = Directory(path);
    if (!await dir.exists()) {
      return [];
    }

    final directories = <String>[];

    await for (final entity in dir.list()) {
      if (entity is Directory) {
        directories.add(p.basename(entity.path));
      }
    }

    return directories;
  }

  static Future<List<String>> listJsonFiles(String path) async {
    final dir = Directory(path);
    if (!await dir.exists()) {
      return [];
    }

    final files = <String>[];

    await for (final entity in dir.list()) {
      if (entity is File && entity.path.endsWith('.json')) {
        files.add(entity.path);
      }
    }

    return files;
  }

  static Future<void> copyDirectory(
      String sourcePath, String destinationPath) async {
    final sourceDir = Directory(sourcePath);
    final destDir = Directory(destinationPath);

    if (!await sourceDir.exists()) {
      throw Exception('Source directory does not exist: $sourcePath');
    }

    if (await destDir.exists()) {
      await destDir.delete(recursive: true);
    }

    await destDir.create(recursive: true);

    await for (final entity in sourceDir.list(recursive: true)) {
      final relativePath = p.relative(entity.path, from: sourcePath);
      final destination = p.join(destinationPath, relativePath);

      if (entity is File) {
        await File(entity.path).copy(destination);
      } else if (entity is Directory) {
        await Directory(destination).create(recursive: true);
      }
    }
  }
}
