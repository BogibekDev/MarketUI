import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: false,
        title: const Text(
          "Robots",
          style: TextStyle(color: Colors.redAccent, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.redAccent,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //#category
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    itemCategory(isSelected: true, title: "All"),
                    itemCategory(isSelected: false, title: "Red"),
                    itemCategory(isSelected: false, title: "Blue"),
                    itemCategory(isSelected: false, title: "Green"),
                    itemCategory(isSelected: false, title: "Black"),
                    itemCategory(isSelected: false, title: "Yellow"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              itemProduct(
                  image: "assets/images/img.png",
                  title: "WAIRER AI",
                  type: "Barakali AI",
                  price: 100),
              itemProduct(
                  image: "assets/images/img_1.png",
                  title: "WAIRER AI",
                  type: "Barakali AI",
                  price: 100),
              itemProduct(
                  image: "assets/images/img_2.png",
                  title: "WAIRER AI",
                  type: "Barakali AI",
                  price: 100),

              itemProduct(
                  image: "assets/images/img_3.png",
                  title: "WAIRER AI",
                  type: "Barakali AI",
                  price: 100),

              itemProduct(
                  image: "assets/images/img_5.png",
                  title: "WAIRER AI",
                  type: "Barakali AI",
                  price: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemCategory({isSelected, title}) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Container(
        margin: const EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Colors.redAccent : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: isSelected ? 20 : 17,
            ),
          ),
        ),
      ),
    );
  }

  Widget itemProduct({image, title, type, price}) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  type,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              "\$$price",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
