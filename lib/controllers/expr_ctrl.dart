import 'package:aqueduct/aqueduct.dart';

class ExprController extends FileController {
  
  ExprController(String pathOfDirectoryToServe) : super(pathOfDirectoryToServe);

  @override
  Future<RequestOrResponse> handle(Request request) async {
    final map =  request.body.decode<Map<String, dynamic>>();



  }


}