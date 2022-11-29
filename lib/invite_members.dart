import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teamsmembers/main.dart';
import 'package:teamsmembers/repository/validator.dart';

import 'colors.dart';
import 'models/members.dart';

class InviteMembers extends StatefulWidget {
  const InviteMembers({Key? key}) : super(key: key);

  @override
  State<InviteMembers> createState() => _InviteMembersState();
}

class _InviteMembersState extends State<InviteMembers> {
  final emailController = TextEditingController();
  double width = 0.0;
  double height = 0.0;
  @override
  void initState() {
    functonData();
    // TODO: implement initState
    super.initState();
  }

  var selectAddressType = 'Home';
  var selectedState = 'Tamil Nadu';
  var addressType = ["Home", "Office"];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 7, right: 7, top: 17),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                _titleFunction(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Invite",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                _widgetFunction(),
                const SizedBox(
                  height: 10,
                ),
                dropDownValues(memberName.toString()),
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(25),
          child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width / 43,
                  ),
                  continueButton(),
                ],
              )),
        ),
      ),
    );
  }

  _titleFunction() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              // Navigator.pop(context);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25,
            ))
      ],
    );
  }

  Validator validator = Validator();
  _widgetFunction() {
    return Form(
      key: validator.formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 1,
                    right: 1,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: hexblueColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: hexblueColor,
                                      // color: grayLinear,
                                    ),
                                    child: TextFormField(
                                        controller: emailController,
                                        validator: validator.validateEmail,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            labelText: 'Business email',
                                            labelStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 19))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double fixPadding = 10;
  continueButton() {
    return SizedBox(
      height: height / 17,
      width: width / 1.2,
      child: InkWell(
        onTap: () {
          validator.validate();
          if (validator.validate()) {
            FocusScope.of(context).unfocus();
          }
        },
        child: Container(
          padding: EdgeInsets.all(fixPadding * 1.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: verifyButtoncolor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Text(
            'Continue',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  bool? Ative = false;
  bool? values = true;

  List<MembersList> itemsNumber = [];
  functonData() {
    MembersList n = MembersList();
    n.name = 'Admin';
    itemsNumber.add(n);

    MembersList n1 = MembersList();
    n1.name = 'Approver';
    itemsNumber.add(n1);

    MembersList n2 = MembersList();
    n2.name = 'Prepare';
    itemsNumber.add(n2);

    MembersList n3 = MembersList();
    n3.name = 'Viewer';
    itemsNumber.add(n3);

    MembersList n4 = MembersList();
    n4.name = 'Employee';
    itemsNumber.add(n4);
  }

  var memberName;
  dropDownValues(memberName) {
    return SizedBox(
      width: width / 1.0,
      height: height / 15.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: hexblueColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: hexblueColor,
                      // color: grayLinear,
                    ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          " ${memberName.toString()}",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: width / 1.6,
                        ),
                        InkWell(
                          onTap: () {
                            bottomSheet();
                          },
                          child: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bottomSheet() {
    double width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(36))),
        builder: (context) {
          return Stack(
            children: [
              SizedBox(
                // height: 230,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    const Divider(
                        indent: 160,
                        endIndent: 160,
                        thickness: 5.9,
                        color: primaryBlue),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: itemsNumber.length,
                        itemBuilder: (context, index) {
                          var item = itemsNumber[index];
                          memberName = itemsNumber[index].name.toString();
                          return Column(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: width / 1.2,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (itemsNumber[index].isActive != true) {
                                        if (values == true) {
                                          itemsNumber[index].isActive = true;
                                        }
                                      } else {
                                        itemsNumber[index].isActive = false;
                                      }
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(fixPadding * 1.5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: itemsNumber[index].isActive
                                          ? focuscolorotp
                                          : hexblueColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      "${item.name.toString()}",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: verifyButtoncolor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}