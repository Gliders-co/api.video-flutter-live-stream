import 'package:apivideo_live_stream/apivideo_live_stream.dart';

Map<SampleRate, String> getSampleRatesMap() {
  Map<SampleRate, String> map = {};
  for (final res in SampleRate.values) {
    map[res] = res.toPrettyString();
  }
  return map;
}

extension SampleRateExtension on SampleRate {
  String toPrettyString() {
    var result = "";
    switch (this) {
      case SampleRate.kHz_8:
        result = "8 kHz";
        break;
      case SampleRate.kHz_16:
        result = "16 kHz";
        break;
      case SampleRate.kHz_32:
        result = "32 kHz";
        break;
      case SampleRate.kHz_44_1:
        result = "44.1 kHz";
        break;
      case SampleRate.kHz_48:
        result = "48 kHz";
        break;
      default:
        result = "32 kHz";
        break;
    }
    return result;
  }
}
