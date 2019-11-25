import React from "react";
import { View, requireNativeComponent } from "react-native";

const RNRoundedProgressBar = requireNativeComponent("RNSwiftView");

const RoundedProgressBar = props => {
  const { percent, borderWidth, color } = props;

  console.log("TCL: RNRoundedProgressBar: 1.0.2 ", RNRoundedProgressBar);

  const options = {
    percent: percent || 1,
    borderWidth: borderWidth || 4,
    size: props.size || 50,
    color: color || "#c2c2c2"
  };

  return (
    <View
      style={{
        width: 100,
        height: 100,
        justifyContent: "center",
        alignItems: "center"
      }}
    >
      <View
        style={{
          position: "absolute",
          top: 0,
          left: 0
        }}
      >
        <RNRoundedProgressBar props={options} />
      </View>
      {props.children}
    </View>
  );
};

export default RoundedProgressBar;
