class ServerException implements Exception {}

class DataParsingException implements Exception {}

class NoConnectionException implements Exception {}

class AuthException implements Exception {
  Object? error;
  AuthExceptionCode? code;
  AuthException({
    this.error,
    this.code,
  });
}

enum AuthExceptionCode { noAuth }
