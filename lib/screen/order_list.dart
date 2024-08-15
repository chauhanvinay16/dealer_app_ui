import 'package:flutter/material.dart';

class Order_list extends StatefulWidget {
  const Order_list({super.key});

  @override
  State<Order_list> createState() => _Order_listState();
}

class _Order_listState extends State<Order_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 1,
          title: Text("Order List", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 12),
              icon: Icon(
                Icons.shopping_cart_outlined, color: Colors.white, size: 25,),
              onPressed: () {
                // Add your onPressed functionality here
              },
            ),
          ],
        ),
        body:DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Material(
                child: Container(
                  height: 70,
                  color: Colors.white,
                  child: TabBar(
                    physics: const ClampingScrollPhysics(),
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                    ),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.pinkAccent, width: 1)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Pending Order"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.pinkAccent, width: 1)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Pending Order"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.pinkAccent, width: 1)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Pending Order"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.separated(
                      padding: EdgeInsets.all(15),
                      itemCount: 20,
                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                      itemBuilder: (context, index){
                        return ListTile(
                          onTap: () {},
                          title: Text("Chat List $index"),
                          subtitle: Text("Tab bar ui"),
                          trailing: Icon(Icons.arrow_circle_right_sharp),
                        );
                      },
                    ),
                    ListView.separated(
                      padding: EdgeInsets.all(15),
                      itemCount: 20,
                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                      itemBuilder: (context, index){
                        return ListTile(
                          onTap: () {},
                          title: Text("Status List $index"),
                          subtitle: Text("Tab bar ui"),
                          trailing: Icon(Icons.arrow_circle_right_sharp),
                        );
                      },
                    ),
                    ListView.separated(
                      padding: EdgeInsets.all(15),
                      itemCount: 20,
                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                      itemBuilder: (context, index){
                        return ListTile(
                          onTap: () {},
                          title: Text("Call List $index"),
                          subtitle: Text("Tab bar ui"),
                          trailing: Icon(Icons.arrow_circle_right_sharp),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

