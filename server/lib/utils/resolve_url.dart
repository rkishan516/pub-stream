import 'package:dart_frog/dart_frog.dart';

const _proxyOriginHeader = 'proxy-origin';

String resolveUrl(RequestContext context, String reference) {
  final proxyOriginInHeader = context.request.headers[_proxyOriginHeader];
  if (proxyOriginInHeader != null) {
    return Uri.parse(proxyOriginInHeader).resolve(reference).toString();
  }
  return context.request.uri.resolve(reference).toString();
}
