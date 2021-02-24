import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Map<String, Color> colors = {
  'primary': Color(0xFF4478EE),
  'secondary': Color(0xFF1A1C28),
  'white': Color(0xFFF6F6F6),
  'grey': Color(0x30c4c4c4),
  'light-grey': Color(0xFF536783),
  'background': Color(0xFF070C13),
  'divider': Color(0x30f6f6f6),
  'inative': Color(0xFFeaeaea),
};

//1A1C28

Text roboto({
  String text = 'Texto Padrão',
  int maxLines = 1,
  TextAlign align = TextAlign.left,
  FontWeight weight = FontWeight.normal,
  double size = 16,
  double height = 1.6,
  double letterSpacing = 0,
  double wordSpacing = 2,
  Color color = const Color(0xFFF6F6F6),
}) =>
    Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      style: GoogleFonts.roboto(
        fontSize: size,
        fontWeight: weight,
        height: height,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        color: color,
      ),
    );

TextStyle textStyle({
  FontWeight weight = FontWeight.normal,
  double size = 16,
  double height = 1.6,
  double letterSpacing = 0,
  double wordSpacing = 2,
  Color color = const Color(0xFFF6F6F6),
}) =>
    GoogleFonts.roboto(
      fontSize: size,
      fontWeight: weight,
      height: height,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      color: color,
    );

Divider divider({
  Color color = const Color(0x30c4c4c4),
  double thickness = 1,
  double height = 1,
  double indent = 0,
  double endIndent = 0,
}) =>
    Divider(
      color: color,
      thickness: thickness,
      height: height,
      indent: indent,
      endIndent: endIndent,
    );

//imagem
imagem(String asset) => Image.asset('assets/$asset');

assets(String asset) => 'assets/$asset';

primaryButton({
  double height = 46,
  double width = 350,
  double border = 8,
  double elevation = 2,
  Color color = const Color(0xFF4478EE),
  Color textColor = const Color(0xFFf6f6f6),
  String text = 'Texto do button',
  double textSize = 14,
  TextAlign align = TextAlign.center,
  Function onPressed,
}) =>
    SizedBox(
      height: height,
      width: width,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(border),
        ),
        elevation: elevation,
        onPressed: onPressed,
        color: color,
        textColor: textColor,
        child: roboto(
          text: text,
          size: textSize,
          weight: FontWeight.bold,
          align: align,
          color: textColor,
        ),
      ),
    );

inputPrimary({
  double marginLeft = 0,
  double marginTop = 0,
  double marginRight = 0,
  double marginBottom = 0,
  double radius = 8,
  int maxLines = 1,
  TextInputType inputType = TextInputType.text,
  bool autoCorrect = true,
  int length = 30,
  bool filled = true,
  Color color = const Color(0xFF070C13),
  String label = '',
  Color textColor = const Color(0xFF536783),
  Color labelColor,
  Color textCountColor = const Color(0xFF536783),
  TextAlign textAlign = TextAlign.left,
  bool enabled = true,
  bool inputBorder = true,
  bool hasBorder = true,
  Function validator,
}) =>
    Container(
      margin: EdgeInsets.fromLTRB(
        marginLeft,
        marginTop,
        marginRight,
        marginBottom,
      ),
      child: TextFormField(
        keyboardType: inputType,
        autocorrect: autoCorrect,
        maxLength: length,
        maxLines: maxLines,
        textAlign: textAlign,
        style: textStyle(
          color: textColor,
          height: 1,
        ),
        decoration: InputDecoration(
          filled: filled,
          fillColor: color,
          labelText: label,
          labelStyle: textStyle(
            //color: colors['light-grey'],
            color: labelColor != null ? labelColor : textColor,
            height: 1,
          ),
          counterStyle: textStyle(
            //color: colors['light-grey'],
            color: textCountColor,
          ),
          focusedBorder: !inputBorder ? InputBorder.none : null,
          enabled: enabled,
          enabledBorder: !inputBorder ? InputBorder.none : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)
              //borderSide: BorderSide.none,
              ),
        ),
        validator: validator,
        
        //onSaved: (input) => _title = input,
        //initialValue: _title,
      ),
    );

bubble({
  @required String text,
  String avatar,
  double radius = 8,
  double width,
  bool isSender = false,
  Color color,
  Color background,
  Color textColor,
  bool tail = true,
  bool sent = false,
  bool delivered = false,
  bool seen = false,
}) =>
    Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          avatar != null ?
            CircleAvatar(backgroundImage: AssetImage(avatar))
          : Container(),

          isSender ? Expanded(child: SizedBox(width: 5)) : Container(),
          Container(
            constraints: BoxConstraints(
              maxWidth: width * .8,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              child: Container(
                decoration: BoxDecoration(
                  color: isSender ? background : colors['grey'],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    topRight: Radius.circular(radius),
                    bottomLeft: Radius.circular(tail
                        ? isSender
                            ? radius
                            : 0
                        : radius),
                    bottomRight: Radius.circular(tail
                        ? isSender
                            ? 0
                            : radius
                        : radius),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: sent 
                      ? isSender 
                        ? EdgeInsets.fromLTRB(12, 6, 28, 6)
                        : EdgeInsets.fromLTRB(28, 6, 12, 6)
                      : EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: roboto(
                        text: text,
                        color: isSender
                            ? colors['white']
                            : colors['secondary'],
                        maxLines: null,
                        align: isSender ? TextAlign.left : TextAlign.right,
                      ),
                    ),
                    isSender
                        ? Positioned(
                            bottom: 4,
                            right: 6,
                            child: Icon(
                              delivered
                                  ? Icons.done_all
                                  : sent
                                      ? Icons.done
                                      : null,
                              //Icons.done,
                              size: 18,
                              color: seen
                                  ? colors['secondary']
                                  : background != null
                                      ? colors['white']
                                      : colors['secondary'],
                            ),
                          )
                        : SizedBox(
                            width: 1,
                          ),
                    /*
                  stateTick
                      ? Positioned(
                          bottom: 4,
                          right: 6,
                          child: stateIcon,
                        )
                      : SizedBox(
                          width: 1,
                        ),
                  */
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );