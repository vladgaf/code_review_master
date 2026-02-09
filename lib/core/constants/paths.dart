import 'dart:io';
import 'package:code_review_master/core/constants/app_constants.dart';
import 'package:path/path.dart' as p;

class AppPaths {
  static Future<String> get appDataDirectory async {
    if (Platform.isWindows) {
      final appData = Platform.environment['APPDATA']!;
      return p.join(appData, AppConstants.dataFolderName);
    } else if (Platform.isMacOS) {
      final home = Platform.environment['HOME']!;
      return p.join(
          home, 'Library', 'Application Support', AppConstants.dataFolderName);
    } else {
      final home = Platform.environment['HOME']!;
      return p.join(home, '.${AppConstants.dataFolderName.toLowerCase()}');
    }
  }

  static Future<String> get coursesDirectory async {
    final baseDir = await appDataDirectory;
    return p.join(baseDir, 'courses');
  }

  static Future<String> getCourseDirectory(String courseName) async {
    final coursesDir = await coursesDirectory;
    return p.join(coursesDir, courseName);
  }

  static Future<String> get configDirectory async {
    final baseDir = await appDataDirectory;
    return p.join(baseDir, 'config');
  }

  static Future<String> get configFilePath async {
    final configDir = await configDirectory;
    return p.join(configDir, 'app_config.json');
  }
}
