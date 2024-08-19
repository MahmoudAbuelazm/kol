import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerWithDropdown extends StatefulWidget {
  final String text;
  const ContainerWithDropdown({super.key, required this.text});

  @override
  State<ContainerWithDropdown> createState() => _ContainerWithDropdownState();
}

class _ContainerWithDropdownState extends State<ContainerWithDropdown> {
  String dropdownValue = 'item1';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 5.w),
          Text(widget.text),
          const Spacer(),
          DropdownButton(
            items:  
              ['item1', 'item2' , 'item3']
                  .map((e) => DropdownMenuItem(
                        child: Text('$e'),
                        value: e,
                      ))
                  .toList(),
                  onChanged: (value) {
                    setState(() {
                      dropdownValue = value.toString();
                    });
                  },
            
            
            underline: Container(),
          ),
          SizedBox(width: 5.w),
        ],
      ),
    );
  }
}
