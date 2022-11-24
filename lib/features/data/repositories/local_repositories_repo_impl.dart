import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';

import '../../domain/repositories/local_repositories_repo.dart';
import '../local/data_sources/local_response_data_source.dart';

class LocalRepositoriesRepoImpl extends LocalRepositoriesRepo {
  final LocalResponseDataSource source;

  LocalRepositoriesRepoImpl({
    required this.source,
  });

  @override
  Future<List<RepositoryEntity>> getRepositories({required String key}) {
    return source.getRepositories(key: key);
  }

  @override
  Future<bool> setRepositories({
    required String key,
    required List<RepositoryEntity> repositories,
  }) {
    return source.setRepositories(key: key, repositories: repositories);
  }
}
