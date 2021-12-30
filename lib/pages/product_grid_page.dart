import 'package:flutter/material.dart';
class ProductGridPage extends StatefulWidget {
  const ProductGridPage({ Key? key }) : super(key: key);
  static const String id = "ProductGridPage";

  @override
  _ProductGridPageState createState() => _ProductGridPageState();
}

class _ProductGridPageState extends State<ProductGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Category Image"),
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {},
          ),
          IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
          ),
        ],
      ),

      body: Container(
        
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            itemList("assets/images/image_shop_5.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_6.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_7.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_8.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_5.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_6.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_7.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_8.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_5.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_6.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_7.jpg", "Million start ...", "\$ 49.99"),
            itemList("assets/images/image_shop_8.jpg", "Million start ...", "\$ 49.99"),
          ],
        )
      ),
    );
  }

  Widget itemList(String image, String text, String percent){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            width: double.infinity,
            height: 125,
            image: AssetImage(image),
            // fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text, style: TextStyle(color: Colors.black, fontSize: 15),),
                Icon(Icons.more_vert, color: Colors.grey)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.grade_rounded, color: Colors.yellow,size: 15,),
                    Icon(Icons.grade_rounded, color: Colors.yellow,size: 15,),
                    Icon(Icons.grade_rounded, color: Colors.yellow,size: 15,),
                    Icon(Icons.grade_rounded, color: Colors.yellow,size: 15,),
                    Icon(Icons.grade_rounded, color: Colors.yellow,size: 15,),
                  ],
                ),
                Text(percent, style: TextStyle(color: Colors.blue, fontSize: 15),),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}