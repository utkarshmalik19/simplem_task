import 'package:flutter/material.dart';

import 'models/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.png"),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.indigo.shade900,
        //   elevation: 0.0,
        // ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [


            // Add Divider Line
            Container(
              height: 620,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  // return options_list[index];
                  return Column(
                    children: [
                      index == 0
                          ? Padding(
                              padding: const EdgeInsets.all(26.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("My Profile",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold))),
                            )
                          : Container(),
                      index == 0
                          ? Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset("assets/profile.png",width: 100,),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Text("Krishna Chaitanya", style: TextStyle(color: Colors.white,fontSize: 20),),
                              Text("AIIMS, Delhi", style: TextStyle(color: Colors.orange,fontSize: 16)),

                            ],
                          ),

                        ],
                      )
                          : Container(),
                      Divider(
                        endIndent: 20.0,
                        indent: 20.0,
                        color: Colors.grey,
                        height: 40,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                            child: Image.asset(
                                OptionsData.options_list[index].img.toString())),
                        title: Text(
                          OptionsData.options_list[index].title.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                            OptionsData.options_list[index].description
                                .toString(),
                            style: TextStyle(color: Colors.blueGrey.shade100)),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                    primary: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),

                onPressed: () {},
                child: Text("Log Out", style: TextStyle(color: Colors.white)))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigo.shade900,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Profile')
          ],
        ),
      ),
    );
  }
}
