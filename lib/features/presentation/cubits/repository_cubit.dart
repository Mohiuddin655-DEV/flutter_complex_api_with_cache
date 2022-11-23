import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gitstore/features/domain/use_cases/get_repositories_use_case.dart';
import 'package:flutter_gitstore/features/presentation/cubits/cubit_state.dart';

class RepositoryCubit extends Cubit<CubitState> {
  late int mPage = 0;
  late int mRetryValue = 0;

  final GetRepositoriesUseCase getRepositoriesUseCase;

  RepositoryCubit({
    required this.getRepositoriesUseCase,
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
      final data = await getRepositoriesUseCase.getEntities(
        queryParameters: _generateQueryOptions(),
      );

      final currentData = state.result;

      currentData.addAll(data);

      final loadedState = state.copyWith(
        isFirstLoading: false,
        isLoading: false,
        result: currentData,
      );

      print(loadedState);

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

  Map<String, String> _getDefaultMap() {
    return {'q': 'Flutter', 'per_page': "10", 'page': "$mPage"};
  }

  Map<String, String> _generateQueryOptions() {
    const val = 1;
    final mp = _getDefaultMap();
    if (val == 2) {
      mp['sort'] = 'stars';
    } else if (val == 3) {
      mp['sort'] = 'updated';
    }
    return mp;
  }
}
