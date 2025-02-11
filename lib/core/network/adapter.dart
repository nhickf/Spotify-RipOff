import 'package:dio/dio.dart';
import 'package:retrofit/call_adapter.dart';
import 'package:spotify/core/network/response.dart';

class NetworkResponseAdapter<T>
    extends CallAdapter<Future<T>, Future<DataResponse<T>>> {
  @override
  Future<DataResponse<T>> adapt(Future<T> Function() call) async {
    try {
      var response = await call();
      return Success(response);
    } on DioException catch (e) {
      return Failure(
        e.response?.statusMessage,
        e.response?.statusCode,
      );
    } on Exception catch (e) {
      return Exception(e);
    }
  }
}
