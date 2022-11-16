import 'dart:core';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:gypsy_chat/src/data/repositories/api/nane_tada_team_api.swagger.dart';
import 'package:gypsy_chat/src/data/repositories/data_models/error/error_model.dart';
import 'package:gypsy_chat/src/data/repositories/local_storage/secure_storage/secure.dart';

part 'repository.history.dart';
part 'repository.rooms.dart';
part 'repository.settings.dart';

class ApiException extends Error implements Exception {
  final ErrorModel model;

  ApiException({required this.model});

  @override
  String toString() => model.toString();
}

class DataRepository {
  DataRepository({
    required this.naneTadaTeamApiPath,
  }) : _naneTadaTeamApi = NaneTadaTeamApi.create(
          baseUrl: naneTadaTeamApiPath,
          interceptors: [
            (Request request) {
              return request.copyWith(
                parameters: null,
              );
            },
            HttpLoggingInterceptor(),
          ],
        ) {
    if (kDebugMode) {
      print('Init DataRepository');
    }
  }

  final NaneTadaTeamApi _naneTadaTeamApi;

  //late final AppDb local;

  final String naneTadaTeamApiPath;

  final secureStorage = SecureStorage();
}
