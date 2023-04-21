import 'package:flutter/material.dart';
import 'package:mirror_wall/Home/Screen/AllWeb/Provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BrouserProvider? brouserProvidertrue,brouserProviderfalse;
  @override
  Widget build(BuildContext context) {
     brouserProviderfalse = Provider.of<BrouserProvider>(context,listen: false);
     brouserProvidertrue = Provider.of<BrouserProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("All Website"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: brouserProviderfalse!.web.length,itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "bro",arguments: index);
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),border: Border.all(
                      color: Colors.black,width: 13,
                    )),
                    child: Image.asset("${brouserProviderfalse!.img[index]}"),
                  ),
                ),
              );
            },),
          )
        ],
      ),
    ),);
  }
}
