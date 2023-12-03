import 'package:flutter/material.dart';
import 'package:nectar_app/components/custom_button.dart';

class locationPage extends StatefulWidget {
  locationPage({super.key});

  @override
  State<locationPage> createState() => _locationPageState();
}

class _locationPageState extends State<locationPage> {
  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.asset('assets/images/sing_in/maps.png'),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Text(
                  'Select Your Location',
                  style: TextStyle(
                    letterSpacing: 0.1,
                    fontSize: 23,
                    fontFamily: 'gilroy-medium',
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF030303),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Text(
                  'Switch on your location to stay in tune with\nwhat\'s happening in your area ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.1,
                    fontSize: 14,
                    fontFamily: 'gilroy-medium',
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF7C7C7C),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Zone',
                      style: TextStyle(
                        letterSpacing: 0.1,
                        fontSize: 14,
                        fontFamily: 'gilroy-medium',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF7C7C7C),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: DropdownButtonFormField(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                            ),
                          );
                        }).toList(),
                        onChanged: (String? items) {
                          setState(() {
                            dropdownvalue = items!;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Your Area',
                      style: TextStyle(
                        letterSpacing: 0.1,
                        fontSize: 14,
                        fontFamily: 'gilroy-medium',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF7C7C7C),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: DropdownButtonFormField(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                            ),
                          );
                        }).toList(),
                        onChanged: (String? items) {
                          setState(() {
                            dropdownvalue = items!;
                          });
                        },
                      ),
                    ),
                    ButtonGreen(onPressed: () {}, text: 'Submit'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
