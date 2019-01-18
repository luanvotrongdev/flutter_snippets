double _sliderValue = 30;
Container(
  padding: EdgeInsets.symmetric(horizontal: 5),
  alignment: Alignment(-1 + _sliderValue/DIMMER_VALUE_MAX * 2, 0.3),
  child: Container(
    decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    height: widgetSize,
    width: widgetSize,
    alignment: Alignment.center,
    child: Text("${_sliderValue.round()}",
      style: valueHighlightTextStyle,
    ),
  ),
  ),
  Slider(
  min: DIMMER_VALUE_MIN,
  max: DIMMER_VALUE_MAX,
  value: _sliderValue,
  onChanged: (value) {
    setState(() {
      _sliderValue = value;
    });
  },
),