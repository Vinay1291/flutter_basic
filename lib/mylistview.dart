import 'package:flutter/material.dart';

var arrNames = ['Ram', 'Jay', 'James', 'Saman', 'Raj'];

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            // backgroundImage: AssetImage('assets/img/logo1.png'),
            backgroundColor: Colors.green,
            radius: 30,
            child: Text('data', style: TextStyle(color: Colors.amber)),
          ),
          title: Text(arrNames[index]),
          subtitle: Text('Number'),
          trailing: Icon(Icons.add),
        );
      },
      itemCount: arrNames.length,
      separatorBuilder: (context, index) {
        return Divider(height: 20);
      },
    );
  }
}

class MLSEP extends StatelessWidget {
  const MLSEP({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    arrNames[index],
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      arrNames[index],
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                arrNames[index],
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        );
      },
      itemCount: arrNames.length,
      separatorBuilder: (context, index) {
        return Divider(height: 10);
      },
    );
  }
}

class MLV extends StatelessWidget {
  const MLV({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      reverse: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'One',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Two',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Three',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Four',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Five',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
