import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final _newusernameController = TextEditingController();
  final _newpasswordController = TextEditingController();
  final _newpasswordtryController = TextEditingController();

  @override
  void dispose() {
    _newusernameController.dispose();
    _newpasswordController.dispose();
    _newpasswordtryController.dispose();
    super.dispose();
  }

  void _Signup() {
    final username = _newusernameController.text;
    final password = _newpasswordController.text;
    print('Kullanıcı Adı: $username');
    print('Şifre: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(60, 65, 242, 37),
      body: Stack(
        children: [
          // Logo ve başlığı sabit bir konuma yerleştirir
          Positioned(
            top: 100, // Ekranın üstünden 100 piksel aşağıda
            left: 0,
            right: 0,
            child: Column(
              children: [
                const Text(
                  "THERAPYPATH",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF7F3E9),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Image.asset("Images/Signupimage.png", width: 180, height: 180),
              ],
            ),
          ),

          // Geri kalan içeriği aşağıya kaydırır ve SingleChildScrollView ile sarar
          Padding(
            padding: const EdgeInsets.only(
              top: 350.0,
            ), // Logo ve başlığın yüksekliğine göre bir boşluk bırak
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 90),
                  // ----------------- TextField'lar -----------------
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      controller: _newusernameController,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7F3E9),
                        hintText: "kullanıcı adını giriniz",
                        hintStyle: const TextStyle(color: Colors.grey),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      controller: _newpasswordController,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7F3E9),
                        hintText: "Şifrenizi giriniz",
                        hintStyle: const TextStyle(color: Colors.grey),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      controller: _newpasswordtryController,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7F3E9),
                        hintText: "Şifrenizi tekrar giriniz",
                        hintStyle: const TextStyle(color: Colors.grey),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF7F3E9),
                        ),
                        child: const Text(
                          "iptal",
                          style: TextStyle(color: Color(0xFF295C7C)),
                        ),
                      ),
                      const SizedBox(width: 30),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF7F3E9),
                        ),
                        child: const Text(
                          "kayıt Ol",
                          style: TextStyle(color: Color(0xFF295C7C)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
