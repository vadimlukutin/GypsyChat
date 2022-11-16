import 'package:web_socket_channel/web_socket_channel.dart';

class _WebSocketRepositoryQueryKeys {
  static const name = "name";
}

class WebSocketRepository {
  final String path;
  final Map<String, WebSocketChannel> _channels = {};

  WebSocketRepository({required this.path});

  void addChannel({
    required String name,
  }) {
    if (_channels.keys.contains(name)) {
      return;
    }

    final url = Uri.parse(path)
      ..replace(
        queryParameters: {
          _WebSocketRepositoryQueryKeys.name: name,
        },
      );

    WebSocketChannel.connect(url);
  }

  void removeChannel({
    required String name,
  }) {
    _channels[name]?.sink.close();
    _channels.remove(name);
  }

  void clearChannelList() {
    for (final key in _channels.keys) {
      _channels[key]?.sink.close();
    }

    _channels.clear();
  }
}
