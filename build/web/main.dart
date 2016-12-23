// Copyright (c) 2016, Wezzer. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/platform/browser_static.dart';import 'main.template.dart' as ngStaticInit;

import 'package:get_started/app_component.dart';

main() {
  bootstrapStatic(AppComponent, null, () { ngStaticInit.initReflector(); });
}
