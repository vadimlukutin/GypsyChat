part of 'repository.dart';

extension History on DataRepository {
  Future<HistoryModel?> roomsNameHistoryGet({
    required String? name,
  }) async {
    final response = await _naneTadaTeamApi.roomsNameHistoryGet(name: name);

    return response.body;
  }
}
