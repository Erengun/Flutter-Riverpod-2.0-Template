class Endpoints {
  Endpoints._();
  static const String baseUrl = 'https://reqres.in/';
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 30000;

  static const String login = 'api/login';
  static const String register = 'api/register';
}
