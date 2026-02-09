import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../data/datasources/local/course_local_datasource.dart';
import '../../data/datasources/local/course_local_datasource_impl.dart';
import '../../data/repositories/course_repository_impl.dart';
import '../../domain/repositories/course_repository.dart';
import '../../presentation/pages/course_selection/bloc/course_selection_bloc.dart';

import 'di.config.dart';

final sl = GetIt.instance;

@InjectableInit()
void configureDependencies() => sl.init();

@module
abstract class RegisterModule {
  @singleton
  CourseLocalDataSource get courseLocalDataSource =>
      CourseLocalDataSourceImpl();

  @singleton
  CourseRepository get courseRepository =>
      CourseRepositoryImpl(sl<CourseLocalDataSource>());

  // @singleton
  // CourseSelectionBloc get courseSelectionBloc =>
  //     CourseSelectionBloc(sl<CourseRepository>());
}
