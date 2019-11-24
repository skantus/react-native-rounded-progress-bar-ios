
# react-native-rounded-progress-bar

## Getting started

`$ npm install react-native-rounded-progress-bar --save`

### Mostly automatic installation

`$ react-native link react-native-rounded-progress-bar`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-rounded-progress-bar` and add `RNRoundedProgressBar.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNRoundedProgressBar.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNRoundedProgressBarPackage;` to the imports at the top of the file
  - Add `new RNRoundedProgressBarPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-rounded-progress-bar'
  	project(':react-native-rounded-progress-bar').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-rounded-progress-bar/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-rounded-progress-bar')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNRoundedProgressBar.sln` in `node_modules/react-native-rounded-progress-bar/windows/RNRoundedProgressBar.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Rounded.Progress.Bar.RNRoundedProgressBar;` to the usings at the top of the file
  - Add `new RNRoundedProgressBarPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNRoundedProgressBar from 'react-native-rounded-progress-bar';

// TODO: What to do with the module?
RNRoundedProgressBar;
```
  