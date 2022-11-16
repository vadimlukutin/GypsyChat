import 'package:get/get.dart';
import 'package:gypsy_chat/src/data/repositories/repository/repository.dart';
import 'package:gypsy_chat/src/data/repositories/web_socket_repository/web_socket_repository.dart';
import 'package:gypsy_chat/src/data/utility/utility.dart';
import 'package:yaml/yaml.dart';

/// Is a smart move to make your Services initialize before you run the Flutter app.
/// as you can control the execution flow (maybe you need to load some Theme configuration,
/// apiKey, language defined by the User... so load SettingService before running ApiService.
/// so GetMaterialApp() doesn't have to rebuild, and takes the values directly.
///

class _ApiKeysPath {
  static const naneTadaTeamApiKeysPath = 'assets/api_keys/nane_tada_team_api_keys.yaml';
}

class _ApiConfigKeys {
  static const apiPath = 'api_path';
  static const webSocketPath = 'web_socket_path';
}

Future<void> initServices() async {
  final dynamic naneTadaTeamMap = loadYaml(
    await DataUtility.readStringFile(
      path: _ApiKeysPath.naneTadaTeamApiKeysPath,
    ),
  );

  final naneTadaTeamApiPath = naneTadaTeamMap[_ApiConfigKeys.apiPath];
  final naneTadaTeamWebSocketPath = naneTadaTeamMap[_ApiConfigKeys.webSocketPath];

  Get.put(
    RepositoryService(
      repository: DataRepository(
        naneTadaTeamApiPath: naneTadaTeamApiPath,
      ),
    ).init(),
  );

  Get.put(
    WebSocketRepositoryService(
      repository: WebSocketRepository(
        path: naneTadaTeamWebSocketPath,
      ),
    ).init(),
  );
}

class RepositoryService extends GetxService {
  DataRepository repository;

  RepositoryService({required this.repository});

  RepositoryService init() {
    return this;
  }
}

class WebSocketRepositoryService extends GetxService {
  WebSocketRepository repository;

  WebSocketRepositoryService({required this.repository});

  WebSocketRepositoryService init() {
    return this;
  }
}
