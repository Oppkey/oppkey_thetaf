import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';

class ExposureProgramButton extends StatelessWidget {
  final ButtonStyle? style;
  final double height;
  final double width;
  final String label;

  const ExposureProgramButton(
      {Key? key,
      this.style,
      this.width = 300,
      this.height = 40,
      this.label = 'Exposure Program'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Row(
        children: [
          Text(label),
          DropdownButton(
            items: <String>['manual', 'normal', 'aperture', 'shutter', 'iso']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) async {
              var response = '';
              int exposureProgramValue = 2;
              String exposureProgramName = '';
              if (newValue != null) {
                exposureProgramName = newValue;
              }

              switch (newValue) {
                case 'manual':
                  exposureProgramValue = 1;
                  break;
                case 'normal':
                  exposureProgramValue = 2;
                  break;
                case 'aperture':
                  exposureProgramValue = 3;
                  break;
                case 'shutter':
                  exposureProgramValue = 4;
                  break;
                case 'iso':
                  exposureProgramValue = 9;
                  break;
                default:
                  exposureProgramValue = 2;
                  break;
              }
              response = await setOption(
                  name: 'exposureProgram', value: exposureProgramValue);

              await Future.delayed(const Duration(milliseconds: 250));
              var responseCheck = await command('getOptions', parameters: {
                'optionNames': ['exposureProgram']
              });
              response += '\n$responseCheck';
              response += '------------------\n'
                  'Exposure program now set to $exposureProgramName';
              Provider.of<ResponseNotifier>(context, listen: false)
                  .setResponseText(response);
            },
          ),
        ],
      ),
    );
  }
}
