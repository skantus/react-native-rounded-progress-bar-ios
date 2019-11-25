# react-native-rounded-progress-bar-ios

## Getting started

`$ npm install react-native-rounded-progress-bar-ios --save`

### Mostly automatic installation

`$ react-native link react-native-rounded-progress-bar-ios`

## Usage

```javascript
import RoundedProgressBar from 'react-native-rounded-progress-bar-ios';

...

<RoundedProgressBar
	percent={percent}
	borderWidth={4}
	size={40}
	color="#F02D00">
	<Text>Loading...</Text> // some children
</RoundedProgressBar>
```
