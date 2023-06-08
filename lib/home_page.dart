import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_management_system/All_controller/login_controller.dart';
import 'package:state_management_system/mangement_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());

    return Scaffold(
          appBar: AppBar(title: Text('Home Page'),
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
               Card(
                 elevation: 10,
                 child: ListTile(
                   title: Text('Sk Nayeem Ur Rahman'),
                  trailing : Text('01733364274'),
                 subtitle: Text('nayeemdeveloperbd@gmail.com'),
                   onTap: (){

                     Get.defaultDialog(
                       title:('Aleart'),
                     //  backgroundColor: Colors.blue,
                       middleText: ('Are you sure to delete ?'),
                       titlePadding:EdgeInsets.only(top:20),
                       cancel: TextButton(onPressed: (){
                       }, child: Text('cancel')),

                     );
                   },

                 ),
               ),
               Card(
                 elevation: 10,
                 child: ListTile(
                   title: Text('IHELPBD'),
                   trailing : Text('01733364274'),
                   subtitle: Text('nayeemdeveloperbd@gmail.com'),
                   onTap: (){

                     Get.defaultDialog(
                       title:('Aleart'),
                       //  backgroundColor: Colors.blue,
                       middleText: ('Are you sure to delete ?'),
                       titlePadding:EdgeInsets.only(top:20),
                       cancel: TextButton(onPressed: (){
                       }, child: Text('cancel')),

                     );
                   },

                 ),
               ),
               Card(
                 elevation: 10,
                 child: ListTile(
                   title: Text('Next Tech Limited'),
                   trailing : Text('01733364274'),
                   subtitle: Text('nayeemdeveloperbd@gmail.com'),
                   onTap: (){

                     Get.defaultDialog(
                       title:('Aleart'),
                       //  backgroundColor: Colors.blue,
                       middleText: ('Are you sure to delete ?'),
                       titlePadding:EdgeInsets.only(top:20),
                       cancel: TextButton(onPressed: (){
                       }, child: Text('cancel')),

                     );
                   },

                 ),
               ),
               Card(
                 elevation: 10,
                 child: ListTile(
                   title: Text('PencilBox Institute'),
                   trailing : Text('01733364274'),
                   subtitle: Text('nayeemdeveloperbd@gmail.com'),
                   onTap: (){

                     Get.defaultDialog(
                       title:('Aleart'),
                       //  backgroundColor: Colors.blue,
                       middleText: ('Are you sure to delete ?'),
                       titlePadding:EdgeInsets.only(top:20),
                       cancel: TextButton(onPressed: (){
                       }, child: Text('cancel')),

                     );
                   },

                 ),
               ),
               SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                   children: [
                     TextFormField(
                       controller:loginController.emailEditinController.value,
                       decoration: InputDecoration(
                         hintText: 'Email'

                       ),
                     ),
                     SizedBox(height: 10,),
                     TextFormField(
                       controller:loginController.passwordEditingController.value,
                       decoration: InputDecoration(
                           hintText: 'password'

                       ),
                     ),
                SizedBox(height: 100,),
                OutlinedButton(onPressed: (){

                  loginController.loginApi();
                }, child: Text('Login'))

                   ],

                 ),
               ),








               SizedBox(height: 100,),
               ElevatedButton(
                   onPressed: (){

                 Get.to(ManageMent_page());

               }, child: Text('Management')),










             ],

           ),











floatingActionButton: FloatingActionButton(onPressed: (){

   Get.snackbar('Sk Nayeem Ur Rahman', 'Software Engineer IHelpBD',
   backgroundColor: Colors.purple,
   colorText: Colors.white,

  );



},)




    );
  }
}
