# iOSListenSystemSounds
This repository is a simple app that helps you to listen the system sounds of your phone and shows the SystemSoundID of each one.

![Main Screen](https://github.com/hugounavez/iOSListenSystemSounds/blob/master/images/mainScreen.png)

In order to play a certain sound, just tap the corresponding row. The id code in the row is the one you need to use for playing that sound in your code, for example:

```swift
import UIKit
import AudioToolbox

class ViewController: UIViewController {
  // Mark: ViewDidLoad method
  ...

  // Mark: Play sound method
  func playSoundForRow(){
    let systemSoundID: SystemSoundID = 1015
    AudioServicesPlaySystemSound (systemSoundID)
  }

}

```
