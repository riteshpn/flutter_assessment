// import 'package:flutter/material.dart';

// class EmailTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final ValueChanged<String> onChanged;

//   const EmailTextField(
//       {required this.controller, required this.onChanged, Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       onChanged: onChanged,
//       decoration: InputDecoration(
//         labelText: 'Email Address',
//         hintText: 'Enter your email',
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const EmailTextField({
    required this.controller,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email Address',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          
          style: const TextStyle(
            color: Colors.white, 
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF1A1A1A), 
            hintText: 'Enter your email',
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none, 
            ),
          ),
        ),
      ],
    );
  }
}
