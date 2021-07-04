import 'package:flutter/material.dart';

class PostDetailPage extends StatefulWidget {
  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Add Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.face),
                  hintText: ('Header')),
              controller: titleController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Empty Header';
                }
                if (value.length < 3) {
                  return 'less 3 symbols';
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextFormField(
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'содержание'),
                controller: contentController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Содержание пустое';
                  }
                  return null;
                },
              ),
            ),
          ],
        ));
  }
}
