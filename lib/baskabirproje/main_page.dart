import 'package:basicmusicapp/baskabirproje/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'consts/iconSizes.dart';
import 'consts/containerSizes.dart';
import 'consts/titles.dart';
import 'consts/paddings.dart';
import 'package:basicmusicapp/baskabirproje/consts/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.pinkColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, //arkaplana alıyor colorı
        leading: const Icon(
          Icons.settings,
          color: ProjectColors.blackColor,
          size: ProjectIconSizes.normalIconSize,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: ProjectColors.blackColor,
            size: ProjectIconSizes.normalIconSize,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ///Row place(text(our porduct))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Porducts",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Row(
                  children: [
                    Text(
                      "Sort by",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: ProjectColors.greyColor,
                          ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                )
              ],
            ),

            ///row container
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _ContainerLan(text: ProjectTitles.titleDress, icon: Icons.ac_unit),
                _ContainerLan(text: 'Shoe', icon: Icons.snowshoeing),
                _ContainerLan(text: 'Jeweller', icon: Icons.diamond),
              ],
            ),

            ///container row
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductContainer(),
                ProductContainer(),
              ],
            ),

            Padding(
              padding: ProjectPaddings.sizeTopPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductContainer(),
                  ProductContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _ContainerLan({required String text, required IconData icon}) {
    return Container(
      color: Colors.white,
      width: ProjectWidth.normalContainerWidth,
      height: ProjectHeigth.smallContainerHeigth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }
}

///otomatik olarak kısa yoldan kodları düzenleme : ctrl+alt+l
