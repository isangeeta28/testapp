
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_screen_controller.dart';
import 'detail_screen.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: GetX<HomeController>(
            init: Get.put(HomeController()),
            builder: (homeCon) {
              return homeCon.homeData.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(
                    height: Get.height*0.89,
                      child: ListView.builder(
                      itemCount: homeCon.homeData.length,
                        itemBuilder: (context, i) =>
                            Column(
                          children: <Widget>[
                            Divider(
                              height: 10.0,
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.to(()=>DetailScreen(
                                  id: homeCon.homeData[i].id.toString(),
                                  name: homeCon.homeData[i].name,
                                  email: homeCon.homeData[i].email,
                                  city: homeCon.homeData[i].address?.city,
                                  phone: homeCon.homeData[i].phone,
                                  website: homeCon.homeData[i].website,
                                  companynname: homeCon.homeData[i].company?.name
                                ));
                              },
                              child: ListTile(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("${homeCon.homeData[i].name}",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text("${homeCon.homeData[i].id}",
                                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                                    ),
                                  ],
                                ),
                                subtitle: Container(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child:  Text("${homeCon.homeData[i].username}",
                                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
                  );
            }
          ),
        ));
  }
}
