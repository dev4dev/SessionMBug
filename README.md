### Problem

There is a weird behavior of inner parts of SessionM when it tries to detect `root` ViewController which should be used for presenting its controller.

When banner is presented during presence of `UIAlertController` on the screen, SessionM considers active `UIAlertController` as ViewController to be used for presenting Portal. As a result portal could not be presented and a warning is displayed in console:

`Warning: Attempt to present <SMActivityViewController: 0x7fb45289c600> on <UIAlertController: 0x7fb454c73ea0> whose view is not in the window hierarchy!`

### Possible solution

I think that delegate method

` - (UIViewController *)sessionM:(SessionM *)session viewControllerForActivity:(SMActivityType)type;`

should be called regardless of the value of application's root view controller. Thus developer could decide how and from which controller everything should be presented.

### Mitigating workarounds
If you like to keep the current behavior of automatic detection of the presenting view controller (some existing integrations might rely on this fact, so the above suggestion might introduce a breaking change) - then please introduce couple enhancement to make it more robust:

1. You can detect the controller for presentation at the time of banner click, not at the time of banner is first shown.  
2. You can check the type of the detected presenting controller and if it is UIAlertController - not use it for presentation, although if first is implemented - then you won't probably need this.
3. just use UIApplication's keyWindow.rootViewController