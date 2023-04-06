import 'package:flutter/material.dart';
import 'package:flutter_koku_app/constans/app_constans.dart';
import 'package:flutter_koku_app/models/fragrance_model.dart';
import 'package:google_fonts/google_fonts.dart';

class FragranceInfo extends StatelessWidget {
  const FragranceInfo({Key? key, required this.fragranceDetail})
      : super(key: key);
  final DetailModel fragranceDetail;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5.2 / 4.5,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: const Color(0xb32d3948).withOpacity(0.8),
        ),
        child: SingleChildScrollView(
          child: Column(
          
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\t ÜRÜN',
                  style: Sabitler.getFragranceArticleTitle(),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                fragranceDetail.product!,
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getFragranceArticleTS(),
                    color:Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\t NOTALAR',
                  style: Sabitler.getFragranceArticleTitle(),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                fragranceDetail.contens!,
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getFragranceArticleTS(),
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\t TUTKU',
                  style: Sabitler.getFragranceArticleTitle(),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                fragranceDetail.inspiration!,
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getFragranceArticleTS(),
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\t PARFÜM SANATI',
                  style: Sabitler.getFragranceArticleTitle(),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                fragranceDetail.usage!,
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getFragranceArticleTS(),
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
