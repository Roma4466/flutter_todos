import 'package:flutter/widgets.dart';
import 'package:flutter_todos/notes/home/home.dart';

import '../../authentication/login/login.dart';
import '../bloc/app_bloc.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
