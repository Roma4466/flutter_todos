import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:local_storage_todos_api/local_storage_todos_api.dart';
import 'package:todos_repository/todos_repository.dart';

import 'app/view/app.dart';
import 'notes/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final todosApi = LocalStorageTodosApi(
    plugin: await SharedPreferences.getInstance(),
  );

  // final todosRepository = TodosRepository(todosApi: todosApi);
  //
  // await Firebase.initializeApp();
  //
  // final authenticationRepository = AuthenticationRepository();
  // await authenticationRepository.user.first;
  //
  // runApp(App(
  //   authenticationRepository: authenticationRepository,
  //   todosRepository: todosRepository,
  // ));

  bootstrap(todosApi: todosApi);

}
