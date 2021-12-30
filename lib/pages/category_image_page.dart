import 'package:flutter/material.dart';
class CategoryImagePage extends StatefulWidget {
  const CategoryImagePage({ Key? key }) : super(key: key);
  static const String id = "CategoryImagesPage";

  @override
  _CategoryImagePageState createState() => _CategoryImagePageState();
}

class _CategoryImagePageState extends State<CategoryImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              itemImage("assets/images/image_4.jpg", "Gadgets and Computers","100k Items"),
              itemImage("assets/images/image_8.jpg", "Home and Garden","725k Items"),
              itemImage("assets/images/image_21.jpg", "Babies and Kids","85k Items"),
              itemImage("assets/images/image_20.jpg", "Beauty and Health","221k Items"),
              itemImage("assets/images/image_19.jpg", "Fashion","665k Items"),
              itemImage("assets/images/image_4.jpg", "Gadgets and Computers","100k Items"),
              itemImage("assets/images/image_8.jpg", "Home and Garden","725k Items"),
              itemImage("assets/images/image_21.jpg", "Babies and Kids","85k Items"),
              itemImage("assets/images/image_20.jpg", "Beauty and Health","221k Items"),
              itemImage("assets/images/image_19.jpg", "Fashion","665k Items"),
            ],
          ),
        )
      ),
    );
  }

  Widget itemImage(String image, String title, String text){
    return Container(
      width: double.infinity,
      height:180,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
               begin: Alignment.center,
               colors:[
                 Colors.black.withOpacity(0.3),
                 Colors.black.withOpacity(0.1),
               ] 
            )
          ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          Container(
            height: 30,
            margin: EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              
            ),
            child: Center(
              child: Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
      ),
    );
  }
}