ios-iconkit
===========

An library that help you to build app with vector icon (font icon,like FontAwesome,IcoMoon).

### About
**With ```iconkit```you`ll never need to copy different size images (@2x,@3x) for each icon you want to use in your app. you can also change their color or size easily.The code use Font-Awesome for showing.**

**You can create other icon fonts by [icomoon](https://icomoon.io)**

**icon font (like fontawesome.ttf) 400+ icons only ```112KB``` with all kind of color and size。[All Font-Awesom available icons](http://fortawesome.github.io/Font-Awesome/icons)**


### How to Use
*  Setp 1. Copy ```Icon.h``` ```Icon.m``` ```UILabel+Iconkit.h``` ```UILabel+Iconkit.m```  ```IconImageView.h``` ```IconImageView.m``` and your icon font file ,like ```fontawesome.ttf ``` to your project.
*  Setp 2. Edit your Info.plist ,addRow— ```Fonts provided by application``` item value is ```fontawesome.ttf ```
*  Setp 3. Find an icon in ```Icon.h``` and use icon like normal string.

> or use ```NSString```

```
UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, 40, 40)];
label.textColor = [UIColor blackColor];
label.center = img.center;
label.textAlignment = NSTextAlignmentCenter;
[label setIcon:fa_github];
[self.view addSubview:label];

```
> or use ```IconImageView```

```
IconImageView *img = [[IconImageView alloc]initWithFrame:CGRectMake(0, 0, 160, 160)];
[img setPadding:4];
[img setIcon:fa_apple];
[img setColor:0xececec withAlpha:1.0f];
[img setNeedsDisplay];//manual redraw
[self.view addSubview:img];
```

> or create ```UIImage``` for ```UIImageView```

```
UIImageView *imgview = [[UIImageView alloc]initWithFrame:CGRectMake(0, 160, 80, 80)];
imgview.image = [Icon getIcon:fa_home withSize:80];
[self.view addSubview:imgview];
```
To modify the color, hack the code!

### How to create your own icon font

**first, you should some svg icons.**
**Then, open the website [icomoon](https://icomoon.io)**
**soon, you will find so much icon more than you want!**
----
**Note: Be careful with the license of the icon font**
----

## License

```
Copyright 2014 tank

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

It uses FontAwesome font by Dave Gandy, licensed under OFL 1.1, which is compatible
with this library's license.

    http://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=OFL_plaintext&filename=OFL.txt
    
```
