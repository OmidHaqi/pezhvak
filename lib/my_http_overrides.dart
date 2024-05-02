import 'dart:io';

// This class extends the HttpOverrides class and overrides the createHttpClient method.
class MyHttpOverrides extends HttpOverrides {
  @override
  // This method creates and returns an instance of HttpClient.
  // It accepts an optional SecurityContext as a parameter.
  HttpClient createHttpClient(SecurityContext? context) {
    // Calls the superclass method to create the default HttpClient instance,
    // then sets a callback function for handling bad certificates.
    return super.createHttpClient(context)
      // The badCertificateCallback is invoked when encountering a bad SSL certificate.
      // It takes three parameters: the X509Certificate, the host, and the port.
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
