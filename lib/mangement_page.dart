import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_system/All_controller/login_controller.dart';
import 'package:state_management_system/controler.dart';
class ManageMent_page extends StatefulWidget {
  const ManageMent_page({Key? key}) : super(key: key);

  @override
  State<ManageMent_page> createState() => _ManageMent_pageState();
}

class _ManageMent_pageState extends State<ManageMent_page> {
  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());

 Controler controler = Get.put(Controler());
    final height = MediaQuery.of(context).size.height *0.2;
    final weidh = MediaQuery.of(context).size.width * 0.2 ;
    List<String> frutsList = ['Bananan','Malta ','Apple','Orange'];
    return Scaffold(
      appBar: AppBar(title: Text('Management Page'),
        centerTitle: true,

        actions: [
          IconButton(onPressed: (){
            Get.bottomSheet(
              Container(
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(30)
                ),
                height: 150,

                child: Column(
                  children: [
                    ListTile(
                      title: Text('Light Theme'),
                      leading: Icon(Icons.light_mode),
                      onTap: (){
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      title: Text('Dark Theme'),
                      leading: Icon(Icons.dark_mode),
                      onTap: (){
                        Get.changeTheme(ThemeData.dark());
                      },
                    ),

                  ],
                ),
              ),
            );
          }, icon: Icon(Icons.check),),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('massage'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 50,),
          Row(
            
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en','us'));
              }, child: Text('English')),
              SizedBox(width:  20,),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('Ur','Arabic'));
              }, child: Text('urdu')),
            ],
          ),

          Container(
            child: Obx(() {
              return Text(controler.counter.toString(),style: TextStyle(fontSize: 50),);
            }),
          ),

          Column(
            children: [

              Container(
                height: 10,
                color: Colors.green,
                child: ListView.builder(
                  itemCount:frutsList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(frutsList[index].toString()),
                    );
                },),


              ),
            ],
          ),

          Column(
            children: [
              Container(
                height: 10,
                color: Colors.deepOrangeAccent,


              ),
            ],

          ),






        ],
      ),

floatingActionButton: FloatingActionButton(
  onPressed: (){
    controler.increment();
  },
),


    );
  }
}
