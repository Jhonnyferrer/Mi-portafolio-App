import 'package:url_launcher/url_launcher.dart';

class RedSocial {
  final String url;

  RedSocial(this.url);

  Future<void> abrirEnlace() async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'No se pudo abrir $url';
    }
  }
}
