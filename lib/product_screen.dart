import 'package:flutter/material.dart';
import 'package:project2group1/checkout_screen.dart';
import 'package:project2group1/colors.dart';

class ProductScreen extends StatefulWidget {
  String title1;
  String description1;
  String image1;
  String price1;
  ProductScreen( {super.key, required this.title1,required this.description1,required this.image1,required this.price1} );

  @override
  State<ProductScreen> createState() => _ProductScreenState(title1,description1,image1,price1);
}

class _ProductScreenState extends State<ProductScreen> {

  String title1;
  String description1;
  String image1;
  String price1;
  _ProductScreenState(this.title1,this.description1,this.image1,this.price1);

  String? dropdownValue = '1';
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;



    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
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

        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: size.height-200,
              child:  Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Image.network(
                    image1,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: DesignColors.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 10,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: title1,
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 30,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: description1,
                              style: const TextStyle(
                                color: Colors.black45,
                                fontSize: 16.0,)),
                        ),
                        const SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Quantity:',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Align(
                              alignment: Alignment.centerRight,
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: "\$ $price1",
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 30,),

                        Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutScreen(title2: title1, quantity2: dropdownValue, price2: price1)));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              minimumSize: const Size(100, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
          ),
        )

    );
  }
}
