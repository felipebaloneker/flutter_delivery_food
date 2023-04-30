import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_delivery_food/shared/app_images.dart';
import 'package:flutter_delivery_food/shared/widgets/delivery_banner/delivery_banner_widget.dart';
import 'package:flutter_delivery_food/shared/widgets/find_category/find_category_widget.dart';

class DeliveryMenuPage extends StatefulWidget {
  const DeliveryMenuPage({super.key});

  @override
  State<DeliveryMenuPage> createState() => _DeliveryMenuPageState();
}

class _DeliveryMenuPageState extends State<DeliveryMenuPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Column(children: [
        Container(
          width: size.width,
          height: size.height * 0.34,
          child: DeliveryBannerWidget(),
        ),
        Container(
          child: FindByCategory(),
        )
      ]),
    );
  }
}
