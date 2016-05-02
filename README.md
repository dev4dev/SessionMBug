### Problem

There is a weird behavior of inner parts of SessionM when it tries to detect `root` ViewController which should be used for presenting its controller.

When banner is presented during presence of `UIAlertController` on the screen, SessionM considers active `UIAlertController` as ViewController to be used for presenting Portal. As a result portal could not be presented and a warning is displayed in console:

`Warning: Attempt to present <SMActivityViewController: 0x7fb45289c600> on <UIAlertController: 0x7fb454c73ea0> whose view is not in the window hierarchy!`

### Possible solution

I think that delegate method

` - (UIViewController *)sessionM:(SessionM *)session viewControllerForActivity:(SMActivityType)type;`

should be called regardless of the value of application's root view controller. Thus developer could decide how and from which controller everything should be presented.
