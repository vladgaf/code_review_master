// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:code_review_master/core/di/di.dart' as _i330;
import 'package:code_review_master/data/datasources/local/course_local_datasource.dart'
    as _i182;
import 'package:code_review_master/domain/repositories/course_repository.dart'
    as _i624;
import 'package:code_review_master/domain/usecases/get_available_courses.dart'
    as _i599;
import 'package:code_review_master/domain/usecases/get_lessons_for_course.dart'
    as _i961;
import 'package:code_review_master/domain/usecases/import_course.dart' as _i156;
import 'package:code_review_master/presentation/pages/course_selection/bloc/course_selection_bloc.dart'
    as _i262;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i182.CourseLocalDataSource>(
        () => registerModule.courseLocalDataSource);
    gh.singleton<_i624.CourseRepository>(() => registerModule.courseRepository);
    gh.factory<_i599.GetAvailableCourses>(
        () => _i599.GetAvailableCourses(gh<_i624.CourseRepository>()));
    gh.factory<_i961.GetLessonsForCourse>(
        () => _i961.GetLessonsForCourse(gh<_i624.CourseRepository>()));
    gh.factory<_i156.ImportCourse>(
        () => _i156.ImportCourse(gh<_i624.CourseRepository>()));
    gh.factory<_i262.CourseSelectionBloc>(
        () => _i262.CourseSelectionBloc(gh<_i624.CourseRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i330.RegisterModule {}
