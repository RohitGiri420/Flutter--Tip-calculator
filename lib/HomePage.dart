import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController amountController = TextEditingController();
  double perPersonBill = 0;
  double totalBill = 0;
  double totalTip=0;
  int splitCount=1;

  double? finalPerPersonBill =0;
  double? finalTotalBill=0;
  double finalTotalTip=0;


  int enteredAmount= 0;
  int tipPercent=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 243, 244, 1),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
            
              // HAT IMAGE .......................................................
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("asset/icon/hat.png", width: 70),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Mr",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "TIP",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                      Text(
                        "Calculator",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            
            Card(
              elevation: 4,
              child: Container(
                width: 330,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 19),
                      child: Text(
                        "Total P/Person",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),


                    Text(
                      "₹${finalPerPersonBill}",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Divider(
                        height: 1,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Divider(
                        height: 1,
                        color: Colors.black26,
                      ),
                    ),
            
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Total Bill",
                              style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "₹$finalTotalBill",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 202, 191, 1),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Total Tip",
                              style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "₹$finalTotalTip",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 202, 191, 1),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            
            
            Container(
              width: 330,
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                          Text("Your Bill",style: TextStyle(fontSize: 17),),
                        ],
                      ),
                      Container(
                        width: 230,
                        color: Colors.white,
            
                        child: TextField(
                          controller: amountController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                           hintText: 'Enter Amount',
                              prefixIcon: Icon(Icons.currency_rupee),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  )
                              ),
            
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                            )
                          ),
                        ),
                      )
            
                    ],
                  ),
            
            ),
            SizedBox(height: 30,),
            
            Column(
              children: [
                Container(
                  width: 330,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Choose",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                          Text("Your Tip",style: TextStyle(fontSize: 17),),
                        ],
                      ),
                      Container(
                        width: 230,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            InkWell(
                              onTap: (){
                                tipPercent=10;
                                print(tipPercent);
                              },
                              child: Container(
                                width: 70,
                                height: 58,
                                child: Center(child: Text('10%',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.white),)),

                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(1, 201, 190, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                              ),
                            ),
                            InkWell(
                              onTap: (){
                                tipPercent=15;
                                print(tipPercent);

                              },
                              child: Container(
                                width: 70,
                                height: 58,
                                child: Center(child: Text('15%',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.white),)),

                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(1, 201, 190, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                              ),
                            ),
                            InkWell(
                              onTap: (){
                                tipPercent=20;
                                print(tipPercent);

                              },
                              child: Container(
                                width: 70,
                                height: 58,
                                child: Center(child: Text('20%',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.white),)),

                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(1, 201, 190, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                              ),
                            ),
            
                          ],
                        ),
                      )
            
                    ],
                  ),
            
                ),
                SizedBox(height: 10,),
                Container(
                  width: 330,
                  child:
                  Row(
            
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 230,
                        height: 68,
            
                        child: Center(child: Text('Custom tip',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(1, 201, 190, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
            
                    ],
                  ),
            
                ),
            
            
              ],
            ),
            
            SizedBox(height: 30,),
            Container(
              width: 330,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Split",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                      Text("The Total",style: TextStyle(fontSize: 17),),
                    ],
                  ),
                  Container(
                    width: 230,
                    color: Colors.white,
            
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              if(splitCount==1){
                                splitCount=1;
                              }

                              else{
                                splitCount--;
                              }
                            });
                          },
                          child: Container(
                            width: 70,
                            height: 58,

                            child:Center(child: Text("-",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.white),)),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(1, 201, 190, 1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                            ),
                          ),
                        ),
                        Text("$splitCount",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900
                        ) ,),
                        InkWell(
                        onTap: (){
                          setState(() {
                            splitCount++;
                          });
                        }
                        ,
                          child: Container(
                            width: 70,
                            height: 58,

                            child:Center(child: Text("+",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.white),)),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(1, 201, 190, 1),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                            ),
                          ),
                        ),
                      ],
                    )
                  )
            
                ],
              ),
            
            ),
            
            SizedBox(height: 30,),
            InkWell(
              borderRadius: BorderRadius.circular(10),

              
              onTap: (){
                int tempnum=100;
                enteredAmount = int.parse(amountController.text.toString());
                totalTip = ((enteredAmount/tempnum)*tipPercent);
                totalBill =enteredAmount+totalTip;
                perPersonBill = totalBill/splitCount;
                finalPerPersonBill = double.parse(perPersonBill.toStringAsFixed(2));
                finalTotalTip = double.parse(totalTip.toStringAsFixed(2));
                finalTotalBill = double.parse(totalBill.toStringAsFixed(2));
                setState(() {

                });
              },
              child: Card(
                elevation: 5,
                child: Container(
                  width: 320,
                  height: 58,
                  child: Center(child: Text("Calculate",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800
                  ),)),
            
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
                    ],
                  ),
          )),
    );
  }
}


