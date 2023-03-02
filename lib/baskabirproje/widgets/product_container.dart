import 'package:flutter/material.dart';

class ProductContainer extends StatefulWidget {
  const ProductContainer({
    super.key,
  });

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ///kalp iconu
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite_border_outlined),
              ],
            ),
            //body container
            Container(
              ///bu konteynıra cizik fotorafı koyulcak
              width: 150,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/wave.jpg"),
                    opacity: 0.25
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  child: Image.asset("assets/images/wave.jpg"),
                  ///childına image atılıcak cocuk fotosu
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            //textler
            SizedBox(
              height: 20,
            ),
            Text("Product Name",style: Theme.of(context).textTheme.subtitle1?.copyWith(
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(
              height: 5,
            ),
            Text("80.00 TL",style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w600
            ),),
            SizedBox(
              height: 10,
            ),
            //yıldız iconları
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.yellow,
                ),
                Icon(Icons.star, size: 18, color: Colors.yellow),
                Icon(Icons.star, size: 18, color: Colors.yellow),
                Icon(Icons.star, size: 18, color: Colors.yellow),
                Icon(Icons.star, size: 18, color: Colors.yellow),
              ],
            )
          ],
        ),
      ),
    );
  }
}