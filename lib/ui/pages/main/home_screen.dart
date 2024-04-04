import 'package:career_camp/ui/helper/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: backgroundScreenColor,
        title: const Text(
          "Hi, Shahd",
          style: TextStyle(
            fontSize: 16,
            color: mainTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: mainColor.withOpacity(0.3),
            radius: 14,
            child: const Icon(
              Icons.favorite_outline_sharp,
              color: mainColor,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          ClipRect(
            //  backgroundImage: "",
            // radius: 15,
            child: Image.asset(
              "assets/images/pro.png",
              width: size.width / 12,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          color: mainColor,
          backgroundColor: backgroundScreenColor,
          onRefresh: () async {},
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: searchController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(
                      fontSize: 10,
                      color: greyTextColor.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                        color: greyTextColor.withOpacity(0.8),
                      ),
                      helperStyle: TextStyle(
                        color: greyTextColor.withOpacity(0.8),
                        fontSize: 10,
                      ),
                      floatingLabelStyle: const TextStyle(
                        fontSize: 10,
                        color: mainColor,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: greyTextColor.withOpacity(0.8),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 16),
                      fillColor: backgroundScreenColor,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: backgroundScreenColor,
                          )),
                      focusColor: mainColor,
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: greyTextColor.withOpacity(0.5),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: greyTextColor.withOpacity(0.5),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: mainColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.width / 9,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Product",
                          style: TextStyle(
                            fontSize: 12,
                            color: mainTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        InkWell(
                          child: Text(
                            "More",
                            style: TextStyle(
                              fontSize: 10,
                              color: mainColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.width / 12,
                  ),



                  
                  // SizedBox(
                  //     width: double.infinity,
                  //     height: size.height * 1.5,
                  //     child: GridView.builder(
                  //       gridDelegate:
                  //           const SliverGridDelegateWithFixedCrossAxisCount(
                  //         childAspectRatio: 1 / 1.5,
                  //         mainAxisSpacing: 24,
                  //         crossAxisSpacing: 15,
                  //         crossAxisCount: 2,
                  //       ),
                  //       itemBuilder: (context, index) => const SizedBox(),
                  //       itemCount: 6,
                  //     )),













                  SizedBox(
                    width: double.infinity,
                    height: size.height * 1.5,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      // padding: const EdgeInsets.all(24),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1 / 1.5,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 15,
                        crossAxisCount: 2,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) => Container(
                        width: size.width / 2.5,
                        // height: size.width * 1,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                          color: greyColor.withOpacity(0.1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  "assets/images/item.png",
                                  // height: size.width/6.5,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Lotem lpsum",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: mainTextColor,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Is Simply Dummy Text Of The Printing.",
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                  color: greyTextColor.withOpacity(0.8),
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "\$1500",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: mainColor,
                                ),
                              ),
                              SizedBox(
                                height: size.width / 12,
                              ),
                            ],
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
      ),
    );
  }
}
