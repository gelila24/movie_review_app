enum RequestType {
  get,
  post,
  patch,
  put,
  delete,
}

enum ToastTypes {
  normal,
  success,
  error,
}

enum APIVersion { v1, v2 }

extension APIVersionExtension on APIVersion {
  String get value {
    switch (this) {
      case APIVersion.v1:
        return "v1";
      case APIVersion.v2:
        return "v2";
      default:
        return "v1";
    }
  }
}
