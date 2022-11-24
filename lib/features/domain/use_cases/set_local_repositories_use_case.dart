import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';
import 'package:flutter_gitstore/features/domain/repositories/local_repositories_repo.dart';

class SetLocalRepositoriesUseCase {
  final LocalRepositoriesRepo repository;

  SetLocalRepositoriesUseCase({
    required this.repository,
  });

  Future<bool> setRepositories({
    required String key,
    required List<RepositoryEntity> repositories,
  }) {
    return repository.setRepositories(
      key: key,
      repositories: repositories,
    );
  }
}
