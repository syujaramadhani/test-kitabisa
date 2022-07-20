import 'package:test_kitabisa/features/widgets/widget_other.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget formInput(
  text, {
  keyboardType,
  maxLines,
  validator,
  onSaved,
  onTap,
  fieldSubmitted,
  prefixIcon,
  inputAction,
  focusNode,
  suffixIcon,
  controller,
  obsecureText = false,
  maxLength,
  hint,
  onChanged,
  readOnly = false,
  inputFormatters,
  autoFocus = false,
  expands = false,
  minLine,
  TextAlign textAlign = TextAlign.start,
  autoValidateMode,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      spaceHeight(10.0),
      TextFormField(
        keyboardType: keyboardType,
        cursorColor: Colors.black,
        autovalidateMode: autoValidateMode,
        controller: controller,
        inputFormatters: inputFormatters,
        obscureText: obsecureText,
        autofocus: autoFocus,
        textInputAction: inputAction,
        onFieldSubmitted: fieldSubmitted,
        maxLength: maxLength,
        minLines: minLine,
        maxLines: maxLines,
        focusNode: focusNode,
        readOnly: readOnly,
        textAlign: textAlign,
        expands: expands,
        style: const TextStyle(
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          hintText: hint,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14.0,
            horizontal: 14.0,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        onTap: onTap,
      ),
    ],
  );
}

Widget formSelect(
  text, {
  hint,
  onTap,
  controller,
  validator,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      spaceHeight(10.0),
      TextFormField(
        controller: controller,
        readOnly: true,
        style: const TextStyle(
          fontSize: 14.0,
        ),
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          hintText: hint,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 7.0,
            horizontal: 14.0,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          suffixIcon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey,
          ),
        ),
        onTap: onTap,
      ),
    ],
  );
}

Widget formDatePicker(text, {controller, onTap, hint, validator}) {
  return formInput(
    text,
    validator: validator,
    readOnly: true,
    controller: controller,
    suffixIcon: const Icon(
      Icons.calendar_today,
      color: Colors.grey,
    ),
    textAlign: TextAlign.start,
    hint: hint,
    onTap: onTap,
  );
}

// Widget formCurrency(text, {controller, hint, validator, readOnly = false}) {
//   return formInput(
//     text,
//     validator: validator,
//     controller: controller,
//     readOnly: readOnly,
//     prefixIcon: Padding(
//       padding: EdgeInsets.all(14.0),
//       child: textNormal(
//         "Rp",
//         weight: FontWeight.w700,
//       ),
//     ),
//     textAlign: TextAlign.end,
//     hint: hint,

//     keyboardType: TextInputType.number,
//     inputFormatters: <TextInputFormatter>[
//       CurrencyTextInputFormatter(
//         locale: 'id',
//         decimalDigits: 0,
//         symbol: '',
//       ),
//     ],
//   );
// }

//

Widget formArea(
  text, {
  controller,
  hint,
  validator,
  readOnly = false,
}) {
  return formInput(
    text,
    controller: controller,
    hint: hint,
    maxLines: 5,
    validator: validator,
    readOnly: readOnly,
  );
}
