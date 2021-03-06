# flutter_svprogresshud

[![pub version][pub-image]][pub-url]
[![Join the chat][telegram-image]][telegram-url]

[pub-image]: https://img.shields.io/pub/v/flutter_svprogresshud.svg
[pub-url]: https://pub.dev/packages/flutter_svprogresshud
[telegram-image]:https://img.shields.io/badge/chat-on%20telegram-blue.svg
[telegram-url]: https://t.me/lijy91

English | [简体中文](./README.zh_CN.md)

## Getting Started

### Installation

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  flutter_svprogresshud: ^0.0.3
```

to use `flutter_svprogresshud` on desktop (only macOS), you would include:

```diff
dependencies:
  flutter_svprogresshud: ^0.0.3
+  flutter_svprogresshud_fde:
+    git:
+      url: https://github.com/blankapp/flutter_svprogresshud_fde.git
+      ref: master
```

You can install packages from the command line:

```bash
$ flutter packages get
```

### Usage

```dart
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';

SVProgressHUD.show('Loading...');
SVProgressHUD.dismissWithDelay(1500);

```

## Related Links

- https://github.com/SVProgressHUD/SVProgressHUD
- https://github.com/Kaopiz/KProgressHUD
- https://github.com/massimobio/ProgressHUD-Mac
- https://github.com/blankapp/flutter_svprogresshud_fde

## License

```
MIT License

Copyright (c) 2019 JianyingLi <lijy91@foxmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
