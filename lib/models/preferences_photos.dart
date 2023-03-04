import 'package:flutter_koku_app/models/preferences_model.dart';

class PreferencesPhotos extends PreferencesModel {
  PreferencesPhotos({
    required String backgroundImage,
    required String title,
    required String subtitle,
    required String titletwo,
    String? explanation,
    String? body,
  }) : super(
            backgroundImage: backgroundImage,
            title: title,
            subtitle: subtitle,
            explanation: explanation,
            titletwo: titletwo,
            body: body);
}
