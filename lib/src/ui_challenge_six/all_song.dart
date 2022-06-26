import 'package:flutter/material.dart';

class AllSong extends StatefulWidget {
  const AllSong({Key? key}) : super(key: key);

  @override
  State<AllSong> createState() => _AllSongState();
}

class _AllSongState extends State<AllSong> {

  List<SongData> songList=[
    SongData('Helix', 'Flime'),
    SongData('Never be like you', 'Flumu- kli'),
    SongData('Lose it', 'Ft. Nayem Ahmed'),
    SongData('Say it', 'Hasemi'),
    SongData('Love you so', 'Zara'),
    SongData('He hamnava', 'Zara'),
    SongData('Iske ko peyara', 'Nikola'),
    SongData('Tere nam', 'Flime'),
    SongData('Akash jo bi ye', 'Justin '),
    SongData('Prem na karo', 'Flime'),
    SongData('Jab mile tab', 'Helle'),
    SongData('Tum hi ho', 'Anne mary'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Column(
                children: [

                  //header title section
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Skin - FLUMU',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.grey),
                  ),

                  //image section
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                          boxShadow: shadows,
                        ),
                        child: const Icon(Icons.favorite, color: Colors.grey,),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.circle,
                            boxShadow: shadows,
                            image: const DecorationImage(
                                image: NetworkImage('https://i.pinimg.com/originals/59/0e/7c/590e7c5fae41782918ef186d106193ef.png')
                            )
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                          boxShadow: shadows,
                        ),
                        child: const Icon(Icons.edit, color: Colors.grey,),
                      ),
                    ],
                  ),
                ],
              ),
            ),



            //song list here
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: songList.length,
                  itemBuilder: (context, index){
                    return buildSong(songList[index].name, songList[index].des);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSong(String name, String des){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListTile(
        title: Text(name),
        subtitle: Text(des),
        trailing: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: shadows,
          ),
          child: const Icon(Icons.play_arrow, color: Colors.grey,),
        ),
      ),
    );
  }

  List<BoxShadow> shadows=[
    BoxShadow(
        color: Colors.grey.shade500,
        offset: const Offset(4,4),
        blurRadius: 15,
        spreadRadius: 1
    ),
    const BoxShadow(
        color: Colors.white,
        offset: Offset(-4,-4),
        blurRadius: 15,
        spreadRadius: 1
    ),

  ];
}

class SongData{
  String name;
  String des;

  SongData(this.name, this.des);
}