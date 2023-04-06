import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_koku_app/pages/men_details.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../all_providers.dart';
import '../constans/app_constans.dart';

class FragrancePage extends StatelessWidget {
  const FragrancePage({Key? key}) : super(key: key);
  static const routeName = '/fragrance';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Fragrance(),
    );
  }
}

class Fragrance extends StatelessWidget {
  const Fragrance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Sabitler.mainColor2,
      body: const SafeArea(child: _FragList()),
      appBar: AppBar(
        title: Text(
          'Kokular',
          style: GoogleFonts.unna(
              textStyle: Sabitler.getAppbarTextStyle(),
              color: Sabitler.mainColor),
        ),
        backgroundColor: Sabitler.mainColor2,
      ),
    );
  }
}

class _FragList extends ConsumerWidget {
  const _FragList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var fragranceDetail = ref.watch(fragranceProvider);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.68),
      itemCount: 8,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  MenDetails(fragranceDetail: fragranceDetail[index])));
        },
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side:
                    const BorderSide(strokeAlign: 2, color: Color(0xff899AAB))),
            elevation: 2,
            color: const Color(0xffBFB2FF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Spacer(),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child:
                            Image.asset(fragranceDetail[index].productImage!)),
                  ),
                ),
                const Spacer(),
                AspectRatio(
                  aspectRatio: 4 / 1,
                  child: Container(
                    child: (AutoSizeText(fragranceDetail[index].fragranceName!,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: Sabitler.getFragranceTitleTS())),
                  ),
                ),
                const Spacer(flex: 2),
                AspectRatio(
                  aspectRatio: 6 / 1,
                  child: AutoSizeText(
                    fragranceDetail[index].productBrand!,
                    textAlign: TextAlign.center,
                    style: Sabitler.getProductBrandTitleTS(),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
