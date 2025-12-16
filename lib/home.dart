import 'package:flutter/material.dart';
import 'package:flutter_nhom4_3/my_place.dart';
import 'package:flutter_nhom4_3/my_class.dart';
import 'package:flutter_nhom4_3/my_home1.dart';
import 'package:flutter_nhom4_3/change_color_app.dart';
import 'package:flutter_nhom4_3/countdown_timer_app.dart';
import 'package:flutter_nhom4_3/dem_so_app.dart';
import 'package:flutter_nhom4_3/login_page.dart';
import 'package:flutter_nhom4_3/bmi_page.dart';
import 'package:flutter_nhom4_3/feedback_page.dart';
import 'package:flutter_nhom4_3/my_product.dart';
import 'package:flutter_nhom4_3/my_news_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],

      // ===== AppBar ẩn =====
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        elevation: 0,
        toolbarHeight: 0,
      ),

      body: Row(
        children: [
          // ===== SIDEBAR =====
          Container(
            width: 170,
            color: Colors.white,
            padding: const EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildSidebarItem(
                    title: 'Bài 1',
                    icon: Icons.book,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MyPlace()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 2',
                    icon: Icons.class_,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MyClass()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 3',
                    icon: Icons.home,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MyHome1()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 4',
                    icon: Icons.color_lens,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ChangeColorApp()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 5',
                    icon: Icons.timer,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => CountdownTimerApp()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 6',
                    icon: Icons.add,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => DemSoApp()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 7',
                    icon: Icons.login,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LoginPage()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 8',
                    icon: Icons.monitor_weight,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => BMIPage()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 9',
                    icon: Icons.feedback,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => FeedbackPage()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 10',
                    icon: Icons.shopping_cart,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MyProduct()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 11',
                    icon: Icons.article,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MyNewsList()),
                      );
                    },
                  ),
                  _buildSidebarItem(
                    title: 'Bài 12',
                    icon: Icons.app_registration,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // ===== MAIN CONTENT =====
          Expanded(
            child: Center(
              child: Container(
                width: 440,
                padding: const EdgeInsets.all(24),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ===== TITLE =====
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.black, size: 28),
                        const SizedBox(width: 10),
                        Text(
                          'THÔNG TIN SINH VIÊN',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black ,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    _buildFormItem(
                      label: 'Họ và tên',
                      value: 'Nguyễn Thái Thành Trung',
                      icon: Icons.person_outline,
                    ),
                    const SizedBox(height: 15),

                    _buildFormItem(
                      label: 'Mã sinh viên',
                      value: '22T1020781',
                      icon: Icons.badge_outlined,
                    ),
                    const SizedBox(height: 15),

                    _buildFormItem(
                      label: 'Số điện thoại',
                      value: '0762613404',
                      icon: Icons.phone_outlined,
                    ),
                    const SizedBox(height: 15),

                    _buildFormItem(
                      label: 'Email',
                      value: '22T1020781@husc.edu.vn',
                      icon: Icons.email_outlined,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===== SIDEBAR ITEM =====
  Widget _buildSidebarItem({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.orange[700]),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ===== FORM ITEM =====
  Widget _buildFormItem({
    required String label,
    required String value,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey[800],
          ),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.blue[600]),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
