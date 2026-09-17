/// Configuration for the OpenWearablesHealthSdk plugin.
class OpenWearablesHealthSdkConfig {
  const OpenWearablesHealthSdkConfig({
    required this.host,
    this.tokenRefreshURL,
  });

  /// The host URL for the API (e.g. `https://api.example.com`).
  ///
  /// Only the host part — the SDK appends `/api/v1/...` paths automatically.
  final String host;

  /// Optional absolute URL used on iOS to refresh the access token.
  ///
  /// When omitted, the iOS SDK uses `{host}/api/v1/token/refresh`.
  /// Pass this when the auth/mint server is not the sync host.
  /// Ignored on Android.
  final String? tokenRefreshURL;

  @override
  String toString() =>
      'OpenWearablesHealthSdkConfig(host: $host, tokenRefreshURL: $tokenRefreshURL)';
}
