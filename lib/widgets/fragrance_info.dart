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
              Text(
                'ÜRÜN',
                style: Sabitler.getFragranceArticleTitle(),
              ),
              Text(
                fragranceDetail.product!,
                style: GoogleFonts.plusJakartaSans(
                    textStyle: Sabitler.getFragranceArticleTS(),
                    color: const Color(0xffe1bd7c)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'NOTALAR',
                style: Sabitler.getFragranceArticleTitle(),
              ),
              Text(
                fragranceDetail.contens!,
                style: GoogleFonts.plusJakartaSans(
                    textStyle: Sabitler.getFragranceArticleTS(),
                    color: const Color(0xffe1bd7c)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'TUTKU',
                style: Sabitler.getFragranceArticleTitle(),
              ),
              Text(
                fragranceDetail.inspiration!,
                style: GoogleFonts.plusJakartaSans(
                    textStyle: Sabitler.getFragranceArticleTS(),
                    color: const Color(0xffe1bd7c)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'PARFÜM SANATI',
                style: Sabitler.getFragranceArticleTitle(),
              ),
              Text(
                fragranceDetail.usage!,
                style: GoogleFonts.plusJakartaSans(
                    textStyle: Sabitler.getFragranceArticleTS(),
                    color: const Color(0xffe1bd7c)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
