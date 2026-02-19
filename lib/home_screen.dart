import 'package:flutter/material.dart';
import 'package:project2group1/colors.dart';
import 'package:project2group1/data.dart';
import 'package:project2group1/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map(
          (e) => Container(
        padding: const EdgeInsets.only(left: 15, bottom: 10),
        child: ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    e.id == 1 ? Colors.white : Colors.black38),
                backgroundColor: MaterialStateProperty.all<Color>(
                    e.id == 1 ? Theme.of(context).primaryColor : Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
            onPressed: () {},
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: DesignColors.backgroundColor,
                    child: Image.asset(
                      e.image,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(e.title, style: const TextStyle(fontSize: 14,color: Colors.black)),
              ],
            )),
      ),
    )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    String value1;
    return Scaffold(


        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Image.asset(
            'assets/lcbo_logo.png', // replace with the path to your logo image
            height: 100, // specify the desired height of the logo
            width: 250,
            color: Colors.black,// specify the desired width of the logo
          ),
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 16),
          ],
        ),

        body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(15),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset("assets/banner.png"),
                  )
                ],
              ),
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: buildCategories(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                  text: "All Beverages",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  )
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.count(
            childAspectRatio: 0.9,
            crossAxisCount: 2,
            padding: const EdgeInsets.all(5.0),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: Data.generateProducts().map((e) => Card(

              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              elevation: 0,
              child: InkWell(
                onTap: (){
                  value1 = e.price.toString();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductScreen(title1: e.title, description1: e.description, image1: e.image, price1: value1)));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(e.image,height: 90,width: double.infinity,),
                      const SizedBox(height: 5,),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                            text: e.type,
                            style: const TextStyle(
                                fontSize: 16.0,color: DesignColors.foreColor)),
                      ),
                      const SizedBox(height: 5,),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                            text: e.title,
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 18.0)),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                                text: "\$ ${e.price}",
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const Spacer(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),).toList(),
          )
        ],
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked, //specify the location of the FAB
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () { },
          tooltip: "Home",
          elevation: 4.0,
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: const Icon(Icons.home_outlined, color: Colors.white,),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const SizedBox(width: 30,),
              IconButton(icon: Image.asset("assets/ic_shop.png"), onPressed: () {},),
              IconButton(icon: Image.asset("assets/ic_wishlist.png"), onPressed: () {},),
              IconButton(icon: Image.asset("assets/ic_notif.png"), onPressed: () {},),
              const SizedBox(width: 2,),
            ],
          ),
        )
    );
  }
}



