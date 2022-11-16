part of 'repository.dart';

extension Settings on DataRepository {
  Future<SettingsModel?> settingsGet() async {
    final response = await _naneTadaTeamApi.settingsGet();

    return response.body;
  }
}
