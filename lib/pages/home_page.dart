import 'package:flutter/material.dart';
import 'package:shopping/pages/category_image_page.dart';
import 'package:shopping/pages/product_grid_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping"),
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
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            category(CategoryImagePage.id, "Category Image"),
            category(ProductGridPage.id, "Product Grid"),
          ],
        ),
      ),

      drawer: Drawer(),
      
    );
  }

  Widget category(String pageNameId, String title){
    return InkWell(
              onTap: (){
                Navigator.pushNamed(context, pageNameId);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
                margin: EdgeInsets.only(top: 15),
              ),
            );
  }
}