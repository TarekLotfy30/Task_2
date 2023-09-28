import 'package:flutter/material.dart';

import '../components/searchbar_component.dart';
import '../../models/online_model.dart';
import '../components/online_users_component.dart';
import '../../models/chat_model.dart';
import '../components/chats_component.dart';


class Messenger extends StatelessWidget {
  Messenger({super.key});

  final List<DataModelOnline> usersOnline = [
    DataModelOnline(
        urlImage:
            "https://media.istockphoto.com/id/1296158947/photo/portrait-of-creative-trendy-black-african-male-designer-laughing.jpg?s=612x612&w=is&k=20&c=eRtcZs-jGk9UcZ_HG2hnbHZR1-rHUjx5JFUrRiUfc5c=",
        userName: "Tarek Lotfy"),
    DataModelOnline(
        urlImage:
            "https://www.rri.res.in/sites/default/files/2022-09/Abhisek%20Tamang.jpg",
        userName: "Eslam Ahmed"),
    DataModelOnline(
        urlImage:
            "https://www.rri.res.in/sites/default/files/2022-03/abhishek-ghadai.jpg",
        userName: "Ahmed Karem"),
    DataModelOnline(
        urlImage:
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        userName: "Sara Sayed"),
    DataModelOnline(
        urlImage:
            "https://www.rri.res.in/sites/default/files/2022-08/HSC_0261.jpg",
        userName: "Ahmed Talal"),
    DataModelOnline(
        urlImage:
            "https://www.rri.res.in/sites/default/files/2023-01/1673604275865%20%281%29.jpg",
        userName: "Sondos Mostafa"),
    DataModelOnline(
        urlImage:
            "https://media.istockphoto.com/id/1296158947/photo/portrait-of-creative-trendy-black-african-male-designer-laughing.jpg?s=612x612&w=is&k=20&c=eRtcZs-jGk9UcZ_HG2hnbHZR1-rHUjx5JFUrRiUfc5c=",
        userName: "Tarek Lotfy"),
    DataModelOnline(
        urlImage:
            "https://www.rri.res.in/sites/default/files/2022-09/Abhisek%20Tamang.jpg",
        userName: "Eslam Ahmed"),
    DataModelOnline(
        urlImage:
            "https://www.rri.res.in/sites/default/files/2022-03/abhishek-ghadai.jpg",
        userName: "Ahmed Karem"),
    DataModelOnline(
        urlImage:
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        userName: "Sara Sayed"),
    DataModelOnline(
        urlImage:
            "https://www.rri.res.in/sites/default/files/2022-08/HSC_0261.jpg",
        userName: "Ahmed Talal"),
    DataModelOnline(
        urlImage:
            "https://www.rri.res.in/sites/default/files/2023-01/1673604275865%20%281%29.jpg",
        userName: "Sondos Mostafa"),
  ];
  final List<DataModelChat> usersChat = [
    DataModelChat(
        userName: "Tarek Lotfi",
        userMessage: "Welcome to flutter ",
        time: "11:48 PM",
        urlImage:
            "https://www.rri.res.in/sites/default/files/2022-05/aman.jpg"),
    DataModelChat(
        userName: "Omar Ahmed",
        userMessage: "Welcome to anything",
        time: "11:48 PM",
        urlImage:
            "https://media.istockphoto.com/id/1296158947/photo/portrait-of-creative-trendy-black-african-male-designer-laughing.jpg?s=612x612&w=is&k=20&c=eRtcZs-jGk9UcZ_HG2hnbHZR1-rHUjx5JFUrRiUfc5c="),
    DataModelChat(
        userName: "Eslam Medhat",
        userMessage: "Welcome to flutter && firebase",
        time: "11:48 PM",
        urlImage:
            "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    DataModelChat(
        userName: "Ahmed Emad",
        userMessage: "Welcome to Backend ",
        time: "11:48 PM",
        urlImage:
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    DataModelChat(
        userName: "Assim Ayman",
        userMessage: "Welcome to Assigment",
        time: "11:48 PM",
        urlImage:
            "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    DataModelChat(
        userName: "Amal Maher",
        userMessage: "Welcome to Front-End ",
        time: "11:48 PM",
        urlImage:
            "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    DataModelChat(
        userName: "Tarek Lotfi",
        userMessage: "Welcome to flutter ",
        time: "11:48 PM",
        urlImage:
            "https://www.rri.res.in/sites/default/files/2022-05/aman.jpg"),
    DataModelChat(
        userName: "Omar Ahmed",
        userMessage: "Welcome to anything",
        time: "11:48 PM",
        urlImage:
            "https://media.istockphoto.com/id/1296158947/photo/portrait-of-creative-trendy-black-african-male-designer-laughing.jpg?s=612x612&w=is&k=20&c=eRtcZs-jGk9UcZ_HG2hnbHZR1-rHUjx5JFUrRiUfc5c="),
    DataModelChat(
        userName: "Eslam Medhat",
        userMessage: "Welcome to flutter && firebase",
        time: "11:48 PM",
        urlImage:
            "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    DataModelChat(
        userName: "Ahmed Emad",
        userMessage: "Welcome to Backend ",
        time: "11:48 PM",
        urlImage:
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    DataModelChat(
        userName: "Assim Ayman",
        userMessage: "Welcome to Assigment",
        time: "11:48 PM",
        urlImage:
            "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    DataModelChat(
        userName: "Amal Maher",
        userMessage: "Welcome to Front-End ",
        time: "11:48 PM",
        urlImage:
            "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    DataModelChat(
        userName: "Tarek Lotfi",
        userMessage: "Welcome to flutter ",
        time: "11:48 PM",
        urlImage:
            "https://www.rri.res.in/sites/default/files/2022-05/aman.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Row(
          children: [
            CircleAvatar(
                radius: 22.0,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/guy-smiles-toothily-looks-happily-happy-receive-praise-dressed-casual-clothes-isolated-white_273609-54262.jpg?w=900&t=st=1695638162~exp=1695638762~hmac=3041416dea88b80523333995b49e56f62aa994cae3b8f809572408eed77a7e28")),
            SizedBox(width: 13),
            Text(
              "Chats",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Color(0xff2a2a2a),
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 15),
          CircleAvatar(
            backgroundColor: Color(0xff2a2a2a),
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search bar
              searchBar (),
              const SizedBox(height: 30),
              //stories section
              SizedBox(
                height: 110,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: usersOnline.length,
                  itemBuilder: (context, index) =>
                      BuildOnlineUsersItem(model: usersOnline[index]),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 15),
                ),
              ),
              const SizedBox(height: 30),
              //chat section
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: usersChat.length,
                itemBuilder: (context, index) =>
                    BuildChatItem(model: usersChat[index]),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
