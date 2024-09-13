import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

class PlatformCheck {
  PlatformCheck._();

  static bool get isMobile {
    if (kIsWeb) return false;
    return Platform.isIOS || Platform.isAndroid;
  }

  static bool get isDesktop {
    if (kIsWeb) return true;
    return Platform.isWindows || Platform.isLinux || Platform.isMacOS;
  }
}
