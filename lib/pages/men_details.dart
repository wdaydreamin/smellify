import 'package:flutter/material.dart';
import 'package:flutter_koku_app/models/fragrance_model.dart';
import 'package:flutter_koku_app/widgets/fragrance_info.dart';
import 'package:google_fonts/google_fonts.dart';

class MenDetails extends StatelessWidget {
  final DetailModel fragranceDetail;
  const MenDetails({Key? key, required this.fragranceDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(fragranceDetail.backgroundImage!),
            fit: BoxFit.cover,
          )),
          child: FragranceAnimations(
            fragranceDetail: fragranceDetail,
          ),
        ));
  }
}

class FragranceAnimations extends StatefulWidget {
  final DetailModel fragranceDetail;

  const FragranceAnimations({
    super.key,
    required this.fragranceDetail,
  });

  @override
  State<FragranceAnimations> createState() => _FragranceAnimationsState();
}

class _FragranceAnimationsState extends State<FragranceAnimations>
    with TickerProviderStateMixin {
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
  }

  @override
  void dispose() {
    animation.isCompleted;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: isClicked
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.18,
            child: FadeTransition(
                opacity: animation,
                child: Image.asset(
                  widget.fragranceDetail.png!,
                  color: Colors.white,
                )),
          ),
          FadeTransition(
            opacity: animation,
            child: Center(
                child: Text(widget.fragranceDetail.subtitle!,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: 'Chanel',
                        shadows: [
                          Shadow(color: Colors.black, blurRadius: 4)
                        ]))),
          ),
          AnimatedCrossFade(
              duration: const Duration(milliseconds: 500),
              crossFadeState: isClicked
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: Center(
                  child: FadeTransition(
                      opacity: animation,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(250, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                    color: Color(0xff899AAB), width: 2)),
                            elevation: 1,
                            backgroundColor: Colors.white.withOpacity(0.6),
                          ),
                          onPressed: (() => setState(() => isClicked = true)),
                          child: Text('DETAYLAR',
                              style: GoogleFonts.sourceSansPro(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ))))),
              secondChild:
                  _AnFragrance(fragranceDetail: widget.fragranceDetail))
        ],
      ),
    );
  }
}

class _AnFragrance extends StatelessWidget {
  final DetailModel fragranceDetail;
  const _AnFragrance({
    Key? key,
    required this.fragranceDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FragranceInfo(fragranceDetail: fragranceDetail);
  }
}
