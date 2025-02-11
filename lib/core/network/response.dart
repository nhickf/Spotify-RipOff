abstract class DataResponse<T> {}

class Success<T> extends DataResponse<T> {
  T? data;
  Success(this.data);
}

class Failure<T> extends DataResponse<T> {
  String? message;
  int? code;

  Failure(this.message, this.code);
}

class Exception<T> extends DataResponse<T> {
  Exception exception;

  Exception(this.exception);
}
