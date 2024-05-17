import 'package:flutter/material.dart';
import 'package:poducts/dash_board_painter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  int currentPage = 1;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.currentPage == 1
                ? 'Add New Product'
                : widget.currentPage == 2
                    ? 'Sport Materials'
                    : 'Sports Wear',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 1.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 2),
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
                            if (widget.currentPage == 1) return;
                            setState(() {
                              widget.currentPage = 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 70),
                            backgroundColor: widget.currentPage == 1
                                ? Colors.black
                                : const Color.fromARGB(255, 209, 206, 206),
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
                            if (widget.currentPage == 2) return;
                            setState(() {
                              widget.currentPage = 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 70),
                            backgroundColor: widget.currentPage == 2
                                ? Colors.black
                                : const Color.fromARGB(255, 209, 206, 206),
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
                            if (widget.currentPage == 3) return;
                            setState(() {
                              widget.currentPage = 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 70),
                            backgroundColor: widget.currentPage == 3
                                ? Colors.black
                                : const Color.fromARGB(255, 209, 206, 206),
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
                // الجزء المضاف (Product Image)
                if (widget.currentPage == 1)
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      // المستطيل الجديد
                      Center(
                        child: Container(
                          width: 377, // العرض
                          height: 91, // الارتفاع
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
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
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                              ),
                              // نص في المنتصف
                              SizedBox(
                                width: 130,
                                child: const Text(
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
                              ),
                              // أيقونتان في أقصى اليمين
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {
                                      // وظيفة أيقونة القلم
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete,
                                        color: Colors.red),
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

                      const SizedBox(height: 10),
                      // المستطيل الجديد
                      Center(
                        child: Container(
                          width: 377, // العرض
                          height: 91, // الارتفاع
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
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
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                              ),
                              // نص في المنتصف
                              const Text(
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
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {
                                      // وظيفة أيقونة القلم
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete,
                                        color: Colors.red),
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
                if (widget.currentPage == 2)
                  Column(
                    children: [
                      Container(
                        width: 411,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                "Product Image",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Center(
                              child: ConstrainedBox(
                                constraints: const BoxConstraints.tightFor(
                                    width: 260, height: 200),
                                child: CustomPaint(
                                  painter: DashedBorderPainter(),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.camera_alt,
                                        size: 50,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Click to upload",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(
                                              255, 112, 172, 114),
                                        ),
                                      ),
                                      SizedBox(height: 1),
                                      Text(
                                        "or drag and drop",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 411,
                          //height: 290,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "General Information",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Product Name",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter product name',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Description",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter la description',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 2),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Original Price",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "Discount Price",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 252, 253, 253),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            hintText: '',
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    12), // Change 16 to the desired font size

                                            border: OutlineInputBorder(),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter some text';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 100),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 252, 253, 253),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            hintText: '',
                                            hintStyle: TextStyle(fontSize: 12),
                                            border: OutlineInputBorder(),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter some text';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 10),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .start, // يُحدد توضيب العناصر في الجهة اليسرى
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Discount",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: -0.45,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 5,
                                          top: 5), // ضبط المسافة بين العبارات
                                      child: Text(
                                        "Opstional",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText:
                                              'Enter la discount opstional',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Stock Quantty",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter la Quantty',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Weight",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter le weight ',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "color",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: ' Enter le color',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // اضف الاوامر المتعلقة بالزر هنا
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(
                                          0xff35a072), // لون الخلفية
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 10), // الهامش الداخلي
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // الشكل الخارجي
                                      ),
                                    ),
                                    child: const Text(
                                      "Add Product",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                // Repeat this block as needed for other fields
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                if (widget.currentPage == 3)
                  Column(
                    children: [
                      Container(
                        width: 411,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                "Product Image",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Center(
                              child: ConstrainedBox(
                                constraints: const BoxConstraints.tightFor(
                                    width: 260, height: 200),
                                child: CustomPaint(
                                  painter: DashedBorderPainter(),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.camera_alt,
                                        size: 50,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Click to upload",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(
                                              255, 112, 172, 114),
                                        ),
                                      ),
                                      SizedBox(height: 1),
                                      Text(
                                        "or drag and drop",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 411,
                          //height: 290,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "General Information",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Product Name",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter product name',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Description",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter la description',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 2),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Original Price",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "Discount Price",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 252, 253, 253),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            hintText: '',
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    12), // Change 16 to the desired font size

                                            border: OutlineInputBorder(),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter some text';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 100),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 252, 253, 253),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            hintText: '',
                                            hintStyle: TextStyle(fontSize: 12),
                                            border: OutlineInputBorder(),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter some text';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 10),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .start, // يُحدد توضيب العناصر في الجهة اليسرى
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Discount",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: -0.45,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 5,
                                          top: 5), // ضبط المسافة بين العبارات
                                      child: Text(
                                        "Opstional",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText:
                                              'Enter la discount opstional',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Stock Quantty",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter la Quantty',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Weight",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter le weight ',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "color",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: ' Enter le color',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Show size",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: ' Enter Show size',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 252, 253, 253),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Size",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: ' Enter size',
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // اضف الاوامر المتعلقة بالزر هنا
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(
                                          0xff35a072), // لون الخلفية
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 10), // الهامش الداخلي
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // الشكل الخارجي
                                      ),
                                    ),
                                    child: const Text(
                                      "Add Product",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                // Repeat this block as needed for other fields
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
              ],
            ),
          ),
        ));
  }
}
