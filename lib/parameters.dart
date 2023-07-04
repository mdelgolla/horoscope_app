const isDev = true;

const int IMAGE_QUALITY = 40;
const int NSB_BANK_CODE = 7719;
const double ACTION_FOOTER_HEIGHT = 50;

const String STAGE = Environment.DEV;

class Environment {
  static const String LOCAL = "local";
  static const String DEV = "dev";
  static const String PROD = "prod";
}

class ApiConstants {

}

class ApiResponseCodes {
  static const int serviceUnavailable = 503;
  static const int successResponse = 200;
  static const int errorResponse = 400;
  static const int deviceError = 423;
  static const int invalidDevice = 422;
  static const int exception = 500;
  static const int insecureConnection = 403;
  static const int connectionError = 404;
  static const int noNetwork = 0;
  static const int requestTimeOut = 408;
  static const int loginExpired = 420;
}
