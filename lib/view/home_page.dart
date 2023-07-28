import 'package:fig/bottom/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Anzam shop",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRvnCAL58JHR2UOR_kIDLd0YICJKqBVMtIjeTfJ6nUk7iZhrVuVGaB90bsmsJ04gRvLAk&usqp=CAU"),
                ),
                SizedBox(
                  width: 28,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://www.clipartmax.com/png/small/206-2067075_avatar-child-female-girl-kid-user-young-icon-kid-avatar-icon.png"),
                ),
                SizedBox(
                  width: 28,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://cdn2.vectorstock.com/i/1000x1000/26/91/online-shop-logo-template-icon-vector-30562691.jpg"),
                ),
                SizedBox(
                  width: 28,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1451277246/photo/supermarket-aisle-woman-legs-and-basket-for-shopping-in-grocery-store-customer-organic.webp?b=1&s=170667a&w=0&k=20&c=MCIrAxdX9jEoJdvzsAfvAra7xNsX9DtUKt8Da8-n5OM="),
                )
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 25,
                ),
                Text("Man"),
                SizedBox(
                  width: 70,
                ),
                Text("Vomen"),
                SizedBox(
                  width: 70,
                ),
                Text("Shop"),
                SizedBox(
                  width: 60,
                ),
                Text("Groceries"),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://avatars.mds.yandex.net/i?id=5cb4b793166e6ea7d1339705d159dfd5c83ff73e-9182408-images-thumbs&n=13"),
                ),
                SizedBox(
                  width: 28,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://avatars.mds.yandex.net/i?id=d0c1b96eb3998dcd2321f1eadc186e6661075fa2-8221351-images-thumbs&n=13"),
                ),
                SizedBox(
                  width: 28,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://avatars.mds.yandex.net/i?id=f4ba6e74eabb09697450ad5117898f897f13f4ea-9211526-images-thumbs&n=13"),
                ),
                SizedBox(
                  width: 28,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/5996/5996522.png"),
                )
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text("Electronics"),
                SizedBox(
                  width: 35,
                ),
                Text("Furniture"),
                SizedBox(
                  width: 40,
                ),
                Text("Gifts & Toys"),
                SizedBox(
                  width: 40,
                ),
                Text("See All"),
              ],
            ),
          const  Padding(
              padding:  EdgeInsets.only(right: 280,top: 20),
              child: Text("Popular Products",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
            ),
            Column(children: [
               const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                
                 hintText: "Search"),
          ),
          SizedBox(
            height: 720,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, childAspectRatio: 1),
                  
              itemBuilder: (context, index) {
                return (index != 10 && index != 5 && index != 10)
                    ? Container(
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/$index"),
                                fit: BoxFit.cover),),
                               
                      )
                    : InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return CupertinoAlertDialog(
                                  title:
                                      const Text("Rostan ham sotib olasizmi?"),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Yo'q")),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: ((context) {
                                            return const Cart();
                                          })));
                                        },
                                        child:const Text("Ha sotib olaman"))
                                  ],
                                );
                              });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          color: Colors.green,
                          child: const Center(
                              child: Text("Ushbu mahsulotni sotib oling")),
                        ),
                      );
              },
            ),
          ),
            ],),
            
          ],
        ),
      ),
    );
  }
}
