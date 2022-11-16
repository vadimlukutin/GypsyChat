//Generated code

part of 'nane_tada_team_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$NaneTadaTeamApi extends NaneTadaTeamApi {
  _$NaneTadaTeamApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NaneTadaTeamApi;

  @override
  Future<Response<SettingsModel>> _settingsGet() {
    final String $url = '/settings';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SettingsModel, SettingsModel>($request);
  }

  @override
  Future<Response<RoomsModel>> _roomsGet() {
    final String $url = '/rooms';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<RoomsModel, RoomsModel>($request);
  }

  @override
  Future<Response<HistoryModel>> _roomsNameHistoryGet({required String? name}) {
    final String $url = '/rooms/${name}/history';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<HistoryModel, HistoryModel>($request);
  }
}
