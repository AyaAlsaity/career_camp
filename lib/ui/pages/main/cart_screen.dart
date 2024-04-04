import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../controller/provider/item_counter.dart';
import '../../helper/const.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              "My Cart",
              style: TextStyle(
                fontSize: 14,
                color: mainTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Add more products to your cart!",
              style: TextStyle(
                fontSize: 12,
                color: greyTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height / 2,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    itemCount: 2,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ChangeNotifierProvider(
                        create: (context) => ItemCountrProvider(),
                        child: Consumer<ItemCountrProvider>(
                            builder: (context, itemCounterConsumer, _) {
                          return const ContinerCartScreen();
                        }),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.width / 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "In Total",
                      style: TextStyle(
                        fontSize: 14,
                        color: mainTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$3000.00",
                      style: TextStyle(
                        fontSize: 14,
                        color: mainTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width / 6,
                ),
                InkWell(
                  onTap: () async {},
                  child: Container(
                    width: double.infinity,
                    height: size.width / 6.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: mainColor,
                      border: Border.all(color: mainColor, width: 2),
                    ),
                    child: const Center(
                      child: Text(
                        "Check out",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                          color: backgroundScreenColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContinerCartScreen extends StatefulWidget {
  const ContinerCartScreen({super.key});

  @override
  State<ContinerCartScreen> createState() => _ContinerCartScreenState();
}

class _ContinerCartScreenState extends State<ContinerCartScreen> {
  @override
  Widget build(BuildContext context) {
    final itemCounterListenerrr =
        Provider.of<ItemCountrProvider>(context, listen: true);
    // int index = itemCounterListenerrr.count;
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: mainColor,
          width: 3,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/item.png",
                  width: size.width / 5,
                  height: size.width / 5,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Text(
                      "Lorem lpsum",
                      style: TextStyle(
                        fontSize: 14,
                        color: mainTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Text(
                      "Black",
                      style: TextStyle(
                        fontSize: 10,
                        color: greyTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // const SizedBox(
                //   height: 14,
                // ),
                const Text(
                  "\$1500.00",
                  style: TextStyle(
                    fontSize: 12,
                    color: mainTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        itemCounterListenerrr.add();
                        // setState(() {
                        //   index++;
                        // });
                      },
                      child: const Text(
                        "+",
                        style: TextStyle(
                          fontSize: 16,
                          color: greyTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: mainColor,
                          width: 2.5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          itemCounterListenerrr.count.toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: greyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // if (index > 1) {
                        //   setState(() {
                        //     index--;
                        //   });
                        // }
                      },
                      child: const Text(
                        "-",
                        style: TextStyle(
                          fontSize: 20,
                          color: greyTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
