import 'package:flutter_gitstore/features/data/remote/data_sources/response_data_source.dart';
import 'package:flutter_gitstore/features/data/remote/data_sources/response_data_source_impl.dart';
import 'package:flutter_gitstore/features/domain/repositories/git_repository.dart';
import 'package:flutter_gitstore/features/domain/use_cases/get_repositories_use_case.dart';
import 'package:flutter_gitstore/features/presentation/cubits/repository_cubit.dart';
import 'package:get_it/get_it.dart';

import 'features/data/repositories/git_repository_impl.dart';

final locator = GetIt.instance;

Future<void> init() async {

  // Initial Values
  final sourceImpl = ResponseDataSourceImpl();

  // Data Sources
  locator.registerLazySingleton<ResponseDataSource>(() => sourceImpl);

  // Repositories
  locator.registerLazySingleton<GitRepository>(
      () => GitRepositoryImpl(source: locator()));

  // Use Cases
  locator.registerLazySingleton<GetRepositoriesUseCase>(
      () => GetRepositoriesUseCase(repository: locator()));

  // Cubits
  locator.registerFactory<RepositoryCubit>(
      () => RepositoryCubit(getRepositoriesUseCase: locator()));
}
