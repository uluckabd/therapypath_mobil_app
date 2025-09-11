import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    final username = _usernameController.text;
    final password = _passwordController.text;
    print('Kullanıcı Adı: $username');
    print('Şifre: $password');
    print('beni hatırla: $_rememberMe');
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
                Image.asset("Images/Loginimage.png", width: 180, height: 180),
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
                      controller: _usernameController,
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
                        hintText: "Adınızı giriniz",
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
                      controller: _passwordController,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 40),
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (newvalue) {
                          setState(() {
                            _rememberMe = newvalue ?? false;
                          });
                        },
                        // Checkbox'ın rengini belirleyen özellik
                        side: const BorderSide(
                          color: Color(0xFFF7F3E9), // Çerçeve rengini ayarlar
                          width: 2.0, // Çerçeve kalınlığını ayarlar
                        ),
                        activeColor: const Color(
                          0xFFF7F3E9,
                        ), // Seçili olduğunda içini dolduracak tik rengi
                        checkColor: const Color(
                          0xFF295C7C,
                        ), // Tik işaretinin rengi
                      ),
                      const Text(
                        "Beni hatırla",
                        style: TextStyle(color: Color(0xFFF7F3E9)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF7F3E9),
                    ),
                    child: const Text(
                      "Giriş Yap",
                      style: TextStyle(color: Color(0xFF295C7C)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF7F3E9),
                    ),
                    child: const Text(
                      "Üye Ol",
                      style: TextStyle(color: Color(0xFF295C7C)),
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Yardım",
                      style: TextStyle(color: Color(0xFFF7F3E9)),
                    ),
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
