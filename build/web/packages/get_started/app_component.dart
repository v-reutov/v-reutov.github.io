// Copyright (c) 2016, Wezzer. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

import 'package:get_started/hello_dialog/hello_dialog.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, HelloDialog],
  providers: const [materialProviders],
)
class AppComponent {
  List<String> heroes = buildNames().toList();
}

Iterable<String> buildNames() sync* {
  var prefixes = ["Super", "Mega", "Ultra"];
  var suffixes = ["man", "woman", "boy", "girl"];

  for (var prefix in prefixes) {
    for (var suffix in suffixes) {
      yield "$prefix$suffix";
    }
  }
}
