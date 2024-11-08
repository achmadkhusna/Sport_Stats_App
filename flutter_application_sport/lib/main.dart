import 'package:flutter/material.dart';

void main() {
  runApp(AplikasiSport());
}

class AplikasiSport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Sport',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF0F0F0F),
      ),
      home: LayarTentang(),
    );
  }
}

// Tampilan pertama - LayarTentang
class LayarTentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 40,
              color: Color(0xFF1A1A1A),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'About',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Players',
                      style: TextStyle(color: const Color.fromARGB(255, 202, 202, 202), fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Games',
                      style: TextStyle(color: const Color.fromARGB(255, 202, 202, 202), fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Table',
                      style: TextStyle(color: const Color.fromARGB(255, 202, 202, 202), fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Statistics',
                      style: TextStyle(color: const Color.fromARGB(255, 202, 202, 202), fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      height: 150,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 123, 27, 27),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/manchester_united.png',
                            width: 85,
                            height: 85,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Manchester United',
                                  style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'England • Manchester',
                                  style: TextStyle(fontSize: 16, color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'About',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'see more',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 109, 112, 115)?.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_upward, color: Colors.green, size: 16),
                                  SizedBox(width: 4),
                                  Text(
                                    '1st',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '45',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            StatistikCard(label: 'Games', value: '24', color: const Color.fromARGB(255, 134, 144, 164)),
                            StatistikCard(label: 'Won', value: '21', color: const Color.fromARGB(226, 65, 167, 70)),
                            StatistikCard(label: 'Draw', value: '2', color: const Color.fromARGB(244, 215, 150, 89)),
                            StatistikCard(label: 'Lost', value: '1', color: const Color.fromARGB(255, 207, 66, 66)),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Players',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'see more',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: PemainCard(
                                nomor: '21',
                                nama: 'Antony',
                                posisi: 'Forward',
                                gambar: 'assets/images/antony.png',
                                negara: 'Brazil',
                                flagImagePath: 'assets/images/brazil_flag.png',
                                statistik: {'Game': '44', 'Minutes': '1525', 'Goals': '8', 'Assists': '12'},
                                biografi: 'Antony Matheus dos Santos, known simply as Antony, is a professional Brazilian footballer born on February 24, 2000, in Osasco, Brazil. Antony is recognized for his speed, outstanding dribbling skills, and ability to get past defenders. As a winger, he is agile and has excellent ball control, making him a constant threat to opposing defenses. In 2018, Antony was promoted to São Paulo senior team, where he showcased his potential as a talented young player. In 2020, Antony moved to Europe to join Ajax Amsterdam in the Netherlands. Antony’s impressive performance at Ajax led to his transfer to Manchester United in the summer of 2022. \n\n\nAntony has also represented the Brazilian national team. He made his debut for the senior squad in 2021 and has since been included in Brazil lineup for various international competitions, including World Cup qualifiers. Antony is expected to play a key role for Brazil in the future. Antony is known as a dynamic and entertaining winger. His dribbling is sharp and agile, often using skill moves to bypass defenders and a powerful left-foot shot to finish plays. His ability to create opportunities and complete attacks makes him a significant threat. Antony prefers attacking from the right wing, cutting inside, and looking for opportunities to either shoot or deliver accurate crosses.',
                                physicalParams: {'Weight': '63 kg', 'Height': '1.74 m', 'Age': '24 y.o'},
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: PemainCard(
                                nomor: '7',
                                nama: 'Cristiano Ronaldo',
                                posisi: 'Forward',
                                gambar: 'assets/images/cristiano_ronaldo.png',
                                negara: 'Portugal',
                                flagImagePath: 'assets/images/portugal_flag.png',
                                statistik: {'Game': '39', 'Minutes': '3230', 'Goals': '24', 'Assists': '3'},
                                biografi: 'Cristiano Ronaldo dos Santos Aveiro, famously known as CR7, was born on February 5, 1985, in Funchal, Madeira, Portugal. Ronaldo is widely regarded as one of the greatest football players in history, celebrated for his goal-scoring prowess, exceptional athleticism, and fierce determination. Ronaldo’s professional journey began at Sporting CP in Portugal, where he showcased his extraordinary talent from a young age. In 2003, at just 18 years old, Ronaldo signed with Manchester United, marking the beginning of his rise to international stardom. Ronaldo joined Real Madrid in 2009 for a then-record transfer fee. His time at Madrid was historic, as he became the club’s all-time top scorer with 450 goals. Ronaldo transferred to Juventus in 2018, where he continued his goal-scoring exploits and won two Serie A titles. In 2021, Ronaldo returned to Manchester United, where he continued to inspire with remarkable goals and moments. \n\n\nRonaldo is Portugal’s all-time top scorer and has led his national team to historic achievements. He won the UEFA European Championship with Portugal in 2016 and the UEFA Nations League in 2019. As Portugals captain, Ronaldo continues to break records, including becoming the all-time top scorer in international football. Ronaldo is renowned for his versatility, explosive speed, powerful shooting, and heading ability. Over his career, he has transformed from a skillful winger to a complete forward, capable of playing in various attacking positions. His physical strength, aerial ability, and precision make him a unique talent in world football.',
                                physicalParams: {'Weight': '85 kg', 'Height': '1.87 m', 'Age': '38 y.o'},
                              ),
                            ),
                          ],
                        ),
                      ],
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

class StatistikCard extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  StatistikCard({required this.label, required this.value, required this.color});

  Color _getValueColor() {
    switch (label) {
      case 'Games':
        return Colors.white;
      case 'Won':
        return Colors.green;
      case 'Draw':
        return Colors.orange;
      case 'Lost':
        return Colors.red;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Text(
              label,
              style: TextStyle(color: Colors.grey[300], fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Text(
              value,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: _getValueColor()),
            ),
          ),
        ],
      ),
    );
  }
}

class PemainCard extends StatelessWidget {
  final String nomor;
  final String nama;
  final String posisi;
  final String gambar;
  final String negara;
  final String flagImagePath;
  final Map<String, String> statistik;
  final String biografi;
  final Map<String, String> physicalParams;

  PemainCard({
    required this.nomor,
    required this.nama,
    required this.posisi,
    required this.gambar,
    required this.negara,
    required this.flagImagePath,
    required this.statistik,
    required this.biografi,
    required this.physicalParams,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LayarProfilPemain(
              nama: nama,
              nomor: nomor,
              posisi: posisi,
              gambar: gambar,
              negara: negara,
              flagImagePath: flagImagePath,
              statistik: statistik,
              biografi: biografi,
              physicalParams: physicalParams,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF1F1F1F),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(
                    gambar,
                    width: double.infinity,
                    height: 420,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      nomor,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[800]?.withOpacity(0.7),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    posisi,
                    style: TextStyle(color: Colors.grey[300], fontSize: 14),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Tampilan kedua
class LayarProfilPemain extends StatelessWidget {
  final String nama;
  final String nomor;
  final String posisi;
  final String gambar;
  final String negara;
  final String flagImagePath;
  final Map<String, String> statistik;
  final String biografi;
  final Map<String, String> physicalParams;

  LayarProfilPemain({
    required this.nama,
    required this.nomor,
    required this.posisi,
    required this.gambar,
    required this.negara,
    required this.flagImagePath,
    required this.statistik,
    required this.biografi,
    required this.physicalParams,
  });

  @override
  Widget build(BuildContext context) {
    List<String> paragraphs = biografi.split('\n\n'); // Memisahkan biografi menjadi paragraf-paragraf

    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 40,
              color: Color(0xFF1A1A1A),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'About',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Players',
                      style: TextStyle(color: const Color.fromARGB(255, 202, 202, 202), fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Games',
                      style: TextStyle(color: const Color.fromARGB(255, 202, 202, 202), fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Table',
                      style: TextStyle(color: const Color.fromARGB(255, 202, 202, 202), fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Statistics',
                      style: TextStyle(color: const Color.fromARGB(255, 202, 202, 202), fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 40,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60, left: 50, right: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // Background Logo
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/manchester_united.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2),
                          BlendMode.dstATop,
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/manchester_united.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(width: 1),
                                  Image.asset(
                                    flagImagePath,
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(width: 1),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        nomor,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                nama,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Container(
                            width: 160,
                            height: 280,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                gambar,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(198, 51, 51, 51)?.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: statistik.keys.map((key) {
                        return Column(
                          children: [
                            Text(statistik[key]!, style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                            Text(key, style: TextStyle(color: Colors.white70, fontSize: 14)),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(198, 51, 51, 51)?.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Physical Parameters',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: physicalParams.keys.map((key) {
                            return Container(
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(206, 66, 66, 66)?.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Text(physicalParams[key]!, style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
                                  Text(key, style: TextStyle(color: Colors.white70, fontSize: 14)),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Biography',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        // Menampilkan dua paragraf dari biografi
                        ...paragraphs.map((paragraph) => Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                paragraph,
                                style: TextStyle(color: Colors.white70, fontSize: 14),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
