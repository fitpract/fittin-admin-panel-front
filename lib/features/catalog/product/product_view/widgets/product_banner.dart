import 'package:flutter/material.dart';

class ProductBanner extends StatefulWidget {
  const ProductBanner({Key? key}) : super(key: key);

  @override
  _ProductBannerState createState() => _ProductBannerState();
}

class _ProductBannerState extends State<ProductBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Icon(Icons.heat_pump_outlined),

          ],
        ),
      ),
    );
  }
}
