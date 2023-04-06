import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_koku_app/constans/app_constans.dart';
import 'package:flutter_koku_app/models/preferences_photos.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palette_generator/palette_generator.dart';
import '../widgets/preferences_container.dart';

class PreferencesDetail extends StatelessWidget {
  const PreferencesDetail({Key? key, required this.preferencesPhotos})
      : super(key: key);
  final PreferencesPhotos preferencesPhotos;

  @override
  Widget build(BuildContext context) {
    return PreferencesContainer(
      width: double.infinity,
      imageAsset: preferencesPhotos.backgroundImage!,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Sabitler.mainColor),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
            child: PreferencesAnimations(preferencesPhotos: preferencesPhotos)),
      ),
    );
  }
}

class PreferencesAnimations extends StatefulWidget {
  final PreferencesPhotos preferencesPhotos;
  const PreferencesAnimations({
    super.key,
    required this.preferencesPhotos,
  });

  @override
  State<PreferencesAnimations> createState() => _PreferencesAnimationsState();
}

class _PreferencesAnimationsState extends State<PreferencesAnimations>
    with TickerProviderStateMixin {
  Color containerColor = Colors.transparent;
  Color textColor = Colors.white;
  late PaletteGenerator _generator;
  late AnimationController controller;
  late Animation<double> animation;
  bool isClicked = false;
  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1200), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    super.initState();
    controller.forward();
    findContainerColor();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: FadeTransition(
            opacity: animation,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: AutoSizeText(
                widget.preferencesPhotos.subtitle!,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: GoogleFonts.unna(
                    textStyle: Sabitler.getPreferencesTitleStyle(),
                    shadows: [
                      const Shadow(color: Colors.black, blurRadius: 4),
                    ]),
              ),
            ),
          ),
        ),
        Center(
            child: FadeTransition(
          opacity: animation,
          child: Text(
            widget.preferencesPhotos.explanation!,
            textAlign: TextAlign.center,
            style: GoogleFonts.unna(
                textStyle: Sabitler.getSliverAppbarTextStyle(),
                fontStyle: FontStyle.italic,
                shadows: [
                  const Shadow(color: Colors.black, blurRadius: 4),
                ]),
          ),
        )),
        const Spacer(),
        FadeTransition(
          opacity: animation,
          child: AspectRatio(
              aspectRatio: 4.5 / 4.5,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: containerColor),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AutoSizeText(
                        widget.preferencesPhotos.titletwo!,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.playfairDisplay(
                            textStyle: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: textColor),
                            shadows: [
                              const Shadow(color: Colors.black, blurRadius: 4)
                            ]),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        widget.preferencesPhotos.body ?? '',
                        style: GoogleFonts.sourceSansPro(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: textColor),
                            shadows: [
                              const Shadow(color: Colors.black, blurRadius: 4)
                            ]),
                      )
                    ],
                  ),
                ),
              )),
        )
      ],
    );
  }

  void findContainerColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage(widget.preferencesPhotos.backgroundImage!));
    containerColor = _generator.darkMutedColor!.color.withOpacity(0.8);
    setState(() {});
  }
}
