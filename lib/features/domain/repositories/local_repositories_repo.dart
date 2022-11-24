import '../entities/repository_entity.dart';

abstract class LocalRepositoriesRepo {
  Future<bool> setRepositories({
    required String key,
    required List<RepositoryEntity> repositories,
  });

  Future<List<RepositoryEntity>> getRepositories({
    required String key,
  });
}
