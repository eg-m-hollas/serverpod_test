import 'dart:async';
import 'dart:typed_data';
import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

const _imageWidth = 64;
const _imageHeight = 64;
const _imageSize = _imageWidth * _imageHeight;

const _pixelAddedChannel = 'pixel_added';

var _pixels = Uint8List(_imageSize)..fillRange(0, _imageSize, 2);

class Pixorama extends Endpoint {
  @override
  Future<void> streamOpened(StreamingSession session) async {
    final images = ImageData(
      pixels: _pixels.buffer.asByteData(),
      height: _imageHeight,
      width: _imageWidth,
    );

    sendStreamMessage(session, images);

    session.messages.addListener(_pixelAddedChannel, (update) {
      sendStreamMessage(session, update);
    });
  }

  @override
  Future<void> handleStreamMessage(
    StreamingSession session,
    SerializableEntity message,
  ) async {
    //client sends message
    if (message is ImageUpdate) {
      session.log('Received Image Update');
      _pixels[message.pixelIndex] = message.colorIndex;
      session.messages.postMessage(_pixelAddedChannel, message, global: false);
    }
  }
}
