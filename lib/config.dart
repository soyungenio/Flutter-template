abstract class Config {
  final String baseUrl;

  const Config(
      {required this.baseUrl});
}

class DebugConfig extends Config {
  const DebugConfig()
      : super(
          baseUrl: 'https://api.exchangerate.host',
        );
}
