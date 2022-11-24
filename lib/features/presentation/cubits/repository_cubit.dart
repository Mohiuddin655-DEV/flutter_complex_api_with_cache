import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gitstore/features/domain/use_cases/connectivity_use_case.dart';
import 'package:flutter_gitstore/features/presentation/cubits/cubit_state.dart';

import '../../domain/use_cases/get_local_repositories_use_case.dart';
import '../../domain/use_cases/get_remote_repositories_use_case.dart';
import '../../domain/use_cases/set_local_repositories_use_case.dart';

class RepositoryCubit extends Cubit<CubitState> {
  late int mPage = 0;
  late int mRetryValue = 0;

  final ConnectivityUseCase connectivityUseCase;
  final SetLocalRepositoriesUseCase setLocalRepositoriesUseCase;
  final GetLocalRepositoriesUseCase getLocalRepositoriesUseCase;
  final GetRemoteRepositoriesUseCase getRemoteRepositoriesUseCase;

  RepositoryCubit({
    required this.connectivityUseCase,
    required this.setLocalRepositoriesUseCase,
    required this.getLocalRepositoriesUseCase,
    required this.getRemoteRepositoriesUseCase,
  }) : super(CubitState(
          isFirstLoading: false,
          isLoading: false,
          exception: '',
          result: [],
        ));

  bool isFirstPage() {
    return mPage == 1;
  }

  void reload() {
    _loadData(true);
  }

  void loadFirst() {
    mPage = 1;
    _loadData(true);
  }

  void loadNext() {
    ++mPage;
    _loadData();
  }

  Future<void> _loadData([bool isReloading = false]) async {
    final loadingState = state.copyWith(
      isFirstLoading: isReloading || isFirstPage(),
      isLoading: true,
    );

    emit(loadingState);

    try {
      final isConnected = await connectivityUseCase.isConnected;

      final currentData = state.result;
      final options = getQueryOptions(
        page: mPage,
        limit: 10,
      );
      if (isConnected) {
        final data = await getRemoteRepositoriesUseCase.getRepositories(
          queryParameters: options,
        );

        setLocalRepositoriesUseCase.setRepositories(
          key: "repositories_${getKey(options: options)}",
          repositories: data,
        );

        currentData.addAll(data);
      } else {
        final data = await getLocalRepositoriesUseCase.getRepositories(
          key: "repositories_${getKey(options: options)}",
        );

        currentData.addAll(data);
      }

      final loadedState = state.copyWith(
        isFirstLoading: false,
        isLoading: false,
        result: currentData,
      );

      log("$loadedState");

      emit(loadedState);
    } catch (e) {
      final error = e.toString();

      final failedState = state.copyWith(
        isFirstLoading: false,
        isLoading: false,
        exception: error,
      );

      emit(failedState);
    }
  }

  String getKey({required Map<String, dynamic> options}) {
    final page = options['page'];
    if (!options.containsKey('sort')) {
      return 'sort_none_page_$page';
    } else {
      final sort = options['sort'];
      return 'sort_${sort}_page_$page';
    }
  }

  Map<String, String> getQueryOptions({int page = 1, int limit = 10}) {
    const val = 3;
    final options = {
      'q': 'Flutter',
      'per_page': '$limit',
      'page': "$page",
    };
    if (val == 2) {
      options['sort'] = 'stars';
    } else if (val == 3) {
      options['sort'] = 'updated';
    }
    return options;
  }
}
