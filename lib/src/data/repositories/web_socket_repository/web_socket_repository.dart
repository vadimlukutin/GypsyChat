import 'package:gypsy_chat/src/data/repositories/data_models/socket/message/out/socket_message_out_model.dart';
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

    _channels[name] = WebSocketChannel.connect(url);
  }

  void removeChannel({
    required String name,
  }) {
    _channels[name]?.sink.close();
    _channels.remove(name);
  }

  void sendMessage({
    required SocketMessageOutModel value,
    required String channelName,
  }) {
    final channel = getChannel(channelName);

    if (channel == null) {
      return;
    }

    channel.sink.add(value.toJson().toString());
  }

  WebSocketChannel? getChannel(String name) {
    if (!_channels.keys.contains(name)) {
      return null;
    }

    return _channels[name];
  }

  void clearChannelList() {
    for (final key in _channels.keys) {
      _channels[key]?.sink.close();
    }

    _channels.clear();
  }
}
