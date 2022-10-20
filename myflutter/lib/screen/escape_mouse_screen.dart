import 'package:flutter/material.dart';

class EscapeMouseScreen extends StatelessWidget {
  EscapeMouseScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Center(
          child: Form(
            key: _formKey,
            child: TextFormField(
              controller: _textController,
              validator: (val) {
                if(val == null) return '입력을 해주세요';
                if(val.isEmpty) {
                  return '입력을 해주세요';
                }

                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '"인생마린" 입력'
              ),
            ),
          ),
        ),
          ElevatedButton(onPressed: (){
            if(_formKey.currentState!.validate()) {
              // 피하지 않음
              showDialog(context: context, builder: (BuildContext builder) {
                return AlertDialog(
                  content: Text('잘했어요'),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.of(context).pop();
                    }, child: Text('확인'))
                  ],
                );
              });
            }
          }, child: Text('입력 완료'))
    ]
      ),
    );
  }
}
