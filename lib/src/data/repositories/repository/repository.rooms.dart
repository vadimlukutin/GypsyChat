part of 'repository.dart';

extension Rooms on DataRepository {
  Future<RoomsModel?> roomsGet() async {
    final response = await _naneTadaTeamApi.roomsGet();

    return response.body;
  }
}
