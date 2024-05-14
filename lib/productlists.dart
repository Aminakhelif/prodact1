import 'package:flutter/material.dart';
import 'package:poducts/Sport%20Materials.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Product Lists',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 1.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              // وظيفه التنقل
            },
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 20), // مسافة بين AppBar والمستطيل الكبير
             Center(
          child: Container(
            width: 400,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // إضافة الكود الخاص بالزر الأول هنا
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 70),
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Healthy Products',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                 onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SportMaterials()),
    );
  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 70),
                    backgroundColor: Color.fromARGB(255, 209, 206, 206),
                  ),
                  child: const Text(
                    'Sport Materials',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // إضافة الكود الخاص بالزر الثالث هنا
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 70),
                    backgroundColor: Color.fromARGB(255, 209, 206, 206),
                  ),
                  child: const Text(
                    'Sports Wear',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
            SizedBox(height: 10),
            // المستطيل الجديد
            Center(
              child: Container(
                width: 377, // العرض
                height: 91, // الارتفاع
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                  ),
                  color: Colors.white, // لون الخلفية
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // توزيع العناصر
                  children: [
                    Image.asset(
                      'assets/photo1.png',
                      // color: Colors.black,
                    ),
                    // صورة في أقصى اليسار
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    // نص في المنتصف
                    Text(
                      "Razor Air-Hyper-Brisk",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.45,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // أيقونتان في أقصى اليمين
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            // وظيفة أيقونة القلم
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            // وظيفة أيقونة الحذف
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),
            // المستطيل الجديد
            Center(
              child: Container(
                width: 377, // العرض
                height: 91, // الارتفاع
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                  ),
                  color: Colors.white, // لون الخلفية
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/pngwing 23.png',
                      // color: Colors.black,
                    ),

                    // صورة في أقصى اليسار
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    // نص في المنتصف
                    Text(
                      "T-shirt",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.45,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // أيقونتان في أقصى اليمين
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            // وظيفة أيقونة القلم
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            // وظيفة أيقونة الحذف
                          },
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
    );
  }
}
