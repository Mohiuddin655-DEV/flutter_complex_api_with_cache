import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_gitstore/core/utils/helpers/preference_helper.dart';
import 'package:flutter_gitstore/features/data/local/data_sources/local_response_data_source.dart';
import 'package:flutter_gitstore/features/data/remote/data_sources/remote_response_data_source.dart';
import 'package:flutter_gitstore/features/data/remote/data_sources/remote_response_data_source_impl.dart';
import 'package:flutter_gitstore/features/domain/repositories/remote_repositories_repo.dart';
import 'package:flutter_gitstore/features/presentation/cubits/repository_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/data/local/data_sources/local_response_data_source_impl.dart';
import 'features/data/repositories/local_repositories_repo_impl.dart';
import 'features/data/repositories/remote_repositories_repo_impl.dart';
import 'features/domain/repositories/local_repositories_repo.dart';
import 'features/domain/use_cases/connectivity_use_case.dart';
import 'features/domain/use_cases/get_local_repositories_use_case.dart';
import 'features/domain/use_cases/get_remote_repositories_use_case.dart';
import 'features/domain/use_cases/set_local_repositories_use_case.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // Preferences
  locator.registerSingletonAsync<SharedPreferences>(
      () async => await SharedPreferences.getInstance());

  locator.registerLazySingleton<PreferenceHelper>(
      () => PreferenceHelper.of(preferences: locator()));

  // Data Sources
  locator.registerLazySingleton<LocalResponseDataSource>(
      () => LocalResponseDataSourceImpl(helper: locator()));
  locator.registerLazySingleton<RemoteResponseDataSource>(
      () => RemoteResponseDataSourceImpl());

  // Repositories
  locator.registerLazySingleton<LocalRepositoriesRepo>(
      () => LocalRepositoriesRepoImpl(source: locator()));
  locator.registerLazySingleton<RemoteRepositoriesRepo>(
      () => RemoteRepositoriesRepoImpl(source: locator()));

  // Use Cases
  locator.registerLazySingleton<SetLocalRepositoriesUseCase>(
      () => SetLocalRepositoriesUseCase(repository: locator()));
  locator.registerLazySingleton<GetLocalRepositoriesUseCase>(
      () => GetLocalRepositoriesUseCase(repository: locator()));
  locator.registerLazySingleton<GetRemoteRepositoriesUseCase>(
      () => GetRemoteRepositoriesUseCase(repository: locator()));

  // Cubits
  locator.registerFactory<RepositoryCubit>(() => RepositoryCubit(
        connectivityUseCase: locator(),
        setLocalRepositoriesUseCase: locator(),
        getLocalRepositoriesUseCase: locator(),
        getRemoteRepositoriesUseCase: locator(),
      ));

  // Finalization
  _registerConnectivity();
  await locator.allReady();
}

void _registerConnectivity() async {
  locator.registerLazySingleton<ConnectivityUseCase>(
      () => ConnectivityUseCaseImpl());
  locator.registerFactoryAsync<ConnectivityResult>(
      () async => await Connectivity().checkConnectivity());
  locator.registerFactory<Connectivity>(() => Connectivity());
}
