import 'dart:convert';

import 'package:flutter_gitstore/core/constants/app_info.dart';
import 'package:flutter_gitstore/features/data/remote/data_sources/response_data_source.dart';
import 'package:flutter_gitstore/features/data/remote/models/response_model.dart';
import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';
import 'package:http/http.dart' as http;

class ResponseDataSourceImpl extends ResponseDataSource {
  @override
  Future<List<RepositoryEntity>> getEntities({
    required Map<String, String> queryParameters,
  }) async {
    try {
      final uri = Uri.https(
        AppInfo.baseUrlAuthority,
        AppInfo.pathSearchRepositories,
        queryParameters,
      );

      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final data = ResponseModel.fromJson(json);
        return data.items ?? [];
      } else {
        throw Exception("Failed to load repositories");
      }
    } catch (e) {
      rethrow;
    }
  }
}
