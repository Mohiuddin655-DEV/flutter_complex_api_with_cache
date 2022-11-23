import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';

abstract class ResponseDataSource {
  Future<List<RepositoryEntity>> getEntities({
    required Map<String, String> queryParameters,
  });
}
