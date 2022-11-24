import 'package:flutter_gitstore/features/domain/repositories/local_repositories_repo.dart';

import '../entities/repository_entity.dart';

class GetLocalRepositoriesUseCase {
  final LocalRepositoriesRepo repository;

  GetLocalRepositoriesUseCase({
    required this.repository,
  });

  Future<List<RepositoryEntity>> getRepositories({
    required String key,
  }) {
    return repository.getRepositories(key: key);
  }
}
