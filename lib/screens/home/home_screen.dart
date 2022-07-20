import 'package:get/get.dart';
import 'package:test_kitabisa/features/colors.dart';
import 'package:test_kitabisa/features/controllers/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_kitabisa/screens/home/detail_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ListController listDataController = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Kitabisa',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Obx(
          () => listDataController.isLoading1.value
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: List.generate(
                        listDataController.activitiesModel.data.length,
                        (index) {
                      return InkWell(
                        onTap: () {
                          var data =
                              listDataController.activitiesModel.data[index];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailHomeScreen(data.title, data.urlWebview),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          listDataController.activitiesModel
                                              .data[index].urlImage,
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(listDataController
                                    .activitiesModel.data[index].title),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
        ),
      )),
    );
  }
}
