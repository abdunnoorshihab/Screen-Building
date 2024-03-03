import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final nameController = TextEditingController();
  final detailsController = TextEditingController();

  List<DropdownMenuItem> itemList = [
    DropdownMenuItem(
      child: Text("Hello"),
      value: "Hello",
    ),
    DropdownMenuItem(
      child: Text("Bye"),
      value: "Bye",
    ),
  ];
  List x = ["Hello", "Bye", "Good morning"];

  @override
  Widget build(BuildContext context) {
    x.map((element) {
      return DropdownMenuItem(
        child: Text(element),
        value: element,
      );
    }).toList();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              height: 120,
              color: Colors.amber,
              width: double.infinity,
              child: Center(child: Text(nameController.text)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
                controller: nameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const Icon(Icons.person),
                    fillColor: Colors.grey.shade100,
                    hintText: "please enter your name"),
                onFieldSubmitted: (value) {
                  setState(() {
                    nameController.text = value;
                  });
                }),
            SizedBox(
              height: 10,
            ),
            TextFormField(
                controller: detailsController,
                maxLines: 5,
                textInputAction: TextInputAction.newline,
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const Icon(Icons.details),
                    fillColor: Colors.grey.shade100,
                    hintText: "please enter your name"),
                onFieldSubmitted: (value) {
                  setState(() {
                    detailsController.text = value;
                  });
                }),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
