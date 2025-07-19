import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 150),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.width / 5 - 20,
                    width: MediaQuery.of(context).size.width / 5 - 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 15);
                },
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              spacing: 15,
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 5 - 20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 5 -20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 5 - 20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 5 - 20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 5 - 20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 6,
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width /3 - 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width /3 - 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width /3 - 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width /3 - 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
