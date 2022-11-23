import 'dart:developer';

import 'package:flutter_gitstore/features/domain/entities/response_entity.dart';

import 'repository_model.dart';

class ResponseModel extends ResponseEntity {
  const ResponseModel({
    final int? totalCount,
    final bool? incompleteResults,
    final List<RepositoryModel>? items,
  }) : super(
          totalCount: totalCount,
          incompleteResults: incompleteResults,
          items: items,
        );

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    final int totalCount = json['total_count'];
    final bool incompleteResults = json['incomplete_results'];
    final itemsJson = json['items'];
    final List<RepositoryModel> items = [];
    if (itemsJson != null) {
      itemsJson.forEach((value) {
        try {
          items.add(RepositoryModel.fromJson(value));
        } catch (_) {
          log("$_");
        }
      });
    }
    return ResponseModel(
      totalCount: totalCount,
      incompleteResults: incompleteResults,
      items: items,
    );
  }
}
