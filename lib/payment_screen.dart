import 'package:flutter/material.dart';

import 'home_screen.dart';

class PaymentPage extends StatefulWidget {
  String title3;
  String? quantity3;
  String price3;
  PaymentPage({super.key, required this.title3,required this.quantity3,required this.price3});

  @override
  _PaymentPageState createState() => _PaymentPageState(title3,quantity3,price3);
}

class _PaymentPageState extends State<PaymentPage> {
  late String _selectedCard = "Visa";
  late String _cardNumber;
  late String _expirationDate;
  late String _securityCode;
  late String _cardholderName;
  String title3;
  String? quantity3;
  String price3;
  final _formKey = GlobalKey<FormState>();

  _PaymentPageState(this.title3, this.quantity3, this.price3);

  @override
  Widget build(BuildContext context) {
    double totalPrice = double.parse(price3)*double.parse(quantity3!);
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
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                child: Text(
                  "Order Review",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Card(
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title3,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Quantity: $quantity3",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(
                            "$quantity3\u00D7 $price3 ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            " \$ ${totalPrice.toStringAsFixed(2)} ",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            const Text(
              "Select a card",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _selectedCard,
                items: const [
                  DropdownMenuItem(
                    value: "Visa",
                    child: Text("Visa"),
                  ),
                  DropdownMenuItem(
                    value: "Mastercard",
                    child: Text("Mastercard"),
                  ),
                  DropdownMenuItem(
                    value: "American Express",
                    child: Text("American Express"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedCard = value!;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return "Please select a card";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              const Text(
                "Card details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Card number",
                ),
                onChanged: (value) {
                  setState(() {
                    _cardNumber = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a card number";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Expiration date",
                      ),
                      onChanged: (value) {
                        setState(() {
                          _expirationDate = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter an expiration date";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Security code",
                      ),
                      onChanged: (value) {
                        setState(() {
                          _securityCode = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a security code";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Cardholder name",
                ),
                onChanged: (value) {
                  setState(() {
                    _cardholderName = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a cardholder name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    minimumSize: const Size(100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Confirm Payment",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




