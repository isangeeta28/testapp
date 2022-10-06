import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  String? id;
  String? name;
  String? email;
  String? city;
  String? phone;
  String? website;
  String? companynname;
   DetailScreen({Key? key , this.id, this.name, this.website, this.phone, this.city, this.email, this.companynname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:  Colors.orange,
            title: const Text("Detail Screen"),
            elevation: 0.7,
            actions: const <Widget>[
              Icon(Icons.more_vert)
            ],
          ),
          body: Column(
            children: [
              SizedBox(height: Get.height*0.03,),
              nameWidet('Name :' , name??""),
              SizedBox(height: Get.height*0.015,),
              nameWidet('Phone :' , phone??""),
              SizedBox(height: Get.height*0.015,),
              nameWidet('Email :' , email??""),
              SizedBox(height: Get.height*0.015,),
              nameWidet('WebSite :' , website??""),
              SizedBox(height: Get.height*0.015,),
              nameWidet('City :' , city??""),
              SizedBox(height: Get.height*0.015,),
              nameWidet('Company Name :' , companynname??""),
            ],
          ),
        )
    );
  }
  nameWidet(String title, String subtitle){
    return Padding(
      padding:  EdgeInsets.only(left: Get.width*0.04, right: Get.width*0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title ,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
         // SizedBox(width: Get.width*0.08,),
          SizedBox(
            width: Get.width*0.46,
            child: Text(subtitle,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
          )
        ],
      ),
    );
  }
}
