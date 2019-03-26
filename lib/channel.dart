import 'new_demo.dart';

class NewDemoChannel extends ApplicationChannel {

  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {



    final router = Router();

    router
      .route("/example")
      .linkFunction((request) async {
        return Response.ok({"key": "value"});
      });
    // pure static page
    router.route("/login/account/*").link(() => FileController("lib/pages/login/account_index.html"));
    router.route("/login/id/*").link(() => FileController("lib/pages/login/id_index.html"));

    router.route("/entry/*").link(() => FileController("lib/pages/login/entry.html"));

    router.route("/vote/*").link(() => FileController("lib/pages/vote/"));
    router.route("/account/*").link(() => FileController("lib/pages/account/"));

    return router;
  }
}
