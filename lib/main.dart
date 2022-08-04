import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: text(),));
}
class text extends StatefulWidget {
  const text({Key? key}) : super(key: key);

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {

  TextEditingController a1 = TextEditingController();
  TextEditingController a2 = TextEditingController();
  TextEditingController a3 = TextEditingController();
  TextEditingController a4 = TextEditingController();
  TextEditingController a5 = TextEditingController();
  TextEditingController a6 = TextEditingController();

  String male = "male";
  String female = "female";
  String gvalue = "";

  List<String> lan=["Hindi","English","English"];
  List<bool>t1=[false,false,false];
  String city = "Select City";
  String cd ="1";

  late String aa1,aa2,aa3,aa4,aa5,aa6;
  String x1="",x2="",x3="",x4="",x5="",x6="",x7="",x8="";

  bool pass =true;
  bool pass1 =true;

  String dt = "";

  @override
  Widget build(BuildContext context) {
    var textEditingController = TextEditingController();
    textEditingController.text = 'Enter your name';


    return Scaffold(
      appBar: AppBar(title: Text("Bio Data"),),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)),
                   padding: EdgeInsets.all(5.0),
                    child: TextField(
                      controller: a1,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        hintText: 'Enter your Name',
                        labelText: "Name",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container(
                height: 15,
                child: Text(x1,style: TextStyle(color: Colors.red),),
              )),
            ],
          )),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(5.0),
                   // margin: EdgeInsets.only(left: 50,right: 50),
                    child: TextField(
                      controller: a2,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        hintText: 'Enter Email',
                        labelText: "Email",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                height: 15,
                child: Text(x2,style: TextStyle(color: Colors.red),),
              )),
            ],
          )),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(5.0),
                    //margin: EdgeInsets.only(left: 50,right: 50),
                    child: TextField(
                      controller: a3,
                      // maxLength: 10,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mobile_friendly),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        hintText: 'Enter Contact Number',
                        labelText: "Contact Number",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                height: 15,
                child: Text(x3,style: TextStyle(color: Colors.red),),
              )),
            ],
          )),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      controller: a4,
                      obscureText: pass,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        hintText: 'Enter Password',
                        labelText: "Password",
                      ),
                    ),

                  ),
                ),
                InkWell(
                  onTap: () {
                    pass = !pass;
                    setState(() {

                    });
                  },
                  child: Container(
                    child: Icon(pass?Icons.visibility_off:Icons.visibility),
                    margin: EdgeInsets.only(right: 10),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                height: 15,
                child: Text(x4,style: TextStyle(color: Colors.red),),
              )),
            ],
          )),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      controller: a5,
                      obscureText: pass1,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        hintText: 'Enter Confirm Password',
                        labelText: "Confirm Password",
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    pass1 = !pass1;
                    setState(() {

                    });
                  },
                  child: Container(
                    child: Icon(pass1?Icons.visibility_off:Icons.visibility),
                    margin: EdgeInsets.only(right: 10),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                height: 15,
                child: Text(x5,style: TextStyle(color: Colors.red),),
              )),
            ],
          )),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Container(
                    child: Text("Gender : ",style: TextStyle(fontSize: 20),)
                ),

                Radio(onChanged: (value) {

                  gvalue = value as String;
                  setState(() {});
                },value: male, groupValue: gvalue),
                Text("Male"),
                Radio(onChanged: (value) {
                  gvalue = value as String;
                  setState(() {});
                },value: female, groupValue: gvalue),
                Text("Female"),

              ],
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                height: 15,
                child: Text(x6,style: TextStyle(color: Colors.red),),
              )),
            ],
          )),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Container(
                    child: Text("Language : ",style: TextStyle(fontSize: 20),)
                  // margin: EdgeInsets.only(left: 55),
                ),
                Checkbox(value:t1[0], onChanged: (value) {
                  print(value);
                  setState(() {t1[0]=value!;});},
                  ),
                Text("Hindi"),
                Checkbox(value:t1[1], onChanged: (value) {
                  print(value);
                  setState(() {t1[1]=value!;});},
                ),
                Text("Gujrati"),
                Checkbox(value:t1[2], onChanged: (value) {
                  print(value);
                  setState(() {t1[2]=value!;});},
                ),
                Text("Enaglish"),
              ],
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                height: 15,
                child: Text(x7,style: TextStyle(color: Colors.red),),
              )),
            ],
          )),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Container(
                  child: Text("City : ",style: TextStyle(fontSize: 20),),
                  padding: EdgeInsets.all(5.0),
                ),
                DropdownButton(hint: Text("Select The City"),value: city,onChanged: (value) {

                },items: [
                  DropdownMenuItem(onTap: () {
                    city="Surat";
                    setState(() {

                    });
                  }, child: Text("Surat"),value: "Surat",),
                  DropdownMenuItem(onTap: () {
                    city="Ahmedabad";
                    setState(() {

                    });
                  }, child: Text("Ahmedabad"),value: "Ahmedabad",),
                  DropdownMenuItem(onTap: () {
                    city="Bhavnagar";
                    setState(() {

                    });
                  }, child: Text("Bhavnagar"),value: "Bhavnagar",),
                  DropdownMenuItem(onTap: () {
                    city="Vadodra";
                    setState(() {

                    });
                  }, child: Text("Vadodra"),value: "Vadodra",),
                  DropdownMenuItem(onTap: () {
                    city="Rajkot";
                    setState(() {

                    });
                  }, child: Text("Rajkot"),value: "Rajkot",),
                  DropdownMenuItem(onTap: () {
                    city="Select City";
                    setState(() {

                    });
                  }, child: Text("Select City"),value: "Select City",)
                ]),
              ],
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                height: 15,
                child: Text(x8,style: TextStyle(color: Colors.red),),
              )),
            ],
          )),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Container(
                  child: Text("Date of Birth : ",style: TextStyle(fontSize: 20),),
                  padding: EdgeInsets.all(5.0),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      controller: a6,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        hintText: 'YY/MM/DD',
                        labelText: "Date",
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {

                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1980),
                      lastDate: DateTime.now(),
                    ).then((value) {
                      // t6.text = value as String;
                      dt = "$value";
                      if(dt!="null") {
                        a6.text = dt;
                      }
                      // print(dt);
                    });



                    setState(() {

                    });
                  },
                  child: Container(
                    child: Icon(Icons.date_range),
                    margin: EdgeInsets.only(left: 5,right: 40),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  aa1 = a1.text;
                  aa2 = a2.text;
                  aa3 = a3.text;
                  aa4 = a4.text;
                  aa5 = a5.text;
                  aa6 = a6.text;

                  if(aa1=="")
                  {
                    x1 = "Fill the Name";
                  }
                  else
                  {
                    x1="";
                  }

                  if(aa2=="")
                  {
                    x2 = "Fill the E-mail";
                  }
                  else
                  {
                    if(aa2.contains("@gmail.com"))
                    {
                      x2 = "";
                    }
                    else
                    {
                      x2 = "Invalid E-mail";
                    }
                  }
                  if(aa3=="")
                  {
                    x3 = "Fill the Number";
                  }
                  else
                  {
                    if(aa3.length>10)
                    {
                      x3 = "Invalid Number";
                    }
                    else
                    {
                      x3 = "";
                    }
                  }

                  if(aa4=="")
                  {
                    x4 = "Fill the Password";
                  }
                  else
                  {
                    x4="";
                  }

                  if(aa5=="")
                  {
                    x5 = "Fill the Confirm Password";
                  }
                  else
                  {
                    if(aa4!=aa5)
                    {
                      x5 = "Password Wrong!";
                    }
                    else
                    {
                      x5 = "";
                    }
                  }
                  if(gvalue=="")
                  {
                    x6 = "Choose Any One";
                  }
                  else
                  {
                    x6 = "";
                  }

                  if(t1=="")
                  {
                    x7 = "Choose Any One";
                  }
                  else
                  {
                    x7 = "";
                  }

                  if(city=="Select City")
                  {
                    x8 = "Select The City";
                  }
                  else
                  {
                    x8 = "";
                  }
                  setState(() {

                  });
                }, child: Text("Submit"))
              ],
            ),
          ),
        ],

      ),
    );
  }
}