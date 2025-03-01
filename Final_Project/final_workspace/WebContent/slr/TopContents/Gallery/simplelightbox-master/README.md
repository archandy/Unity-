# simplelightbox
Touch-friendly image lightbox for mobile and desktop with jQuery

### Install
```sh
bower install simplelightbox
```

### Usage
Simple include simplelightbox.css and simple-lightbox.js to your page
```javascript
var lightbox = $('.gallery a').simpleLightbox(options);
```

###Options
| Property | Default | Type | Description |
| -------- | ------- | ---- | ----------- |
| overlay | true | bool | show an overlay or not |
| spinner | true | bool | show spinner or not |
| nav | true | bool | show arrow-navigation or not |
| navText | ['&larr;','&rarr;'] | array | text or html for the navigation arrows |
| captions | true | bool | show captions if availabled or not |
| close | true | bool | show the close button or not |
| closeText | 'X' | string | text or html for the close button |
| fileExt | 'png&#124;jpg&#124;jpeg&#124;gif' | regexp | list of fileextensions the plugin works with | 
| animationSpeed | 250 | int | how long takes the slide animation |
| preloading | true | bool | allows preloading next und previous images |
| enableKeyboard | true | bool | allow keyboard arrow navigation and close with ESC key |
| loop | true | bool | enables looping through images |
| docClose | true | bool | closes the lightbox when clicking outside |
| swipeTolerance | 50 | int | how much pixel you have to swipe, until next or previous image |
| className: | 'simple-lightbox' | string | adds a class to the wrapper of the lightbox
| widthRatio: | 0.8 | float | Ratio of image width to screen width
| heightRatio: | 0.9 | float | Ratio of image height to screen height

###Events
| Name | Description |
| ---- | ----------- |
| open.simplelightbox | this event fires before the lightbox opens |
| opened.simplelightbox | this event fires after the lightbox was opened |
| close.simplelightbox | this event fires before the lightbox closes |
| closed.simplelightbox | this event fires after the lightbox was closed |

**Example**
```javascript
$('.gallery a').on('open.simplelightbox', function () {
  // do something…
});
```

###Public Methods
| Name | Description |
| ---- | ----------- |
| open | Opens the lightbox with an given jQuery Element |
| close | Closes current openend Lightbox |
| next | Go to next image |
| prev | Go to previous image |
| destroy | Destroys the instance of  the lightbox |

**Example**
```javascript
var gallery = $('.gallery a').simpleLightbox();

gallery.next(); // Next Image
```
### Changelog
**1.1.2 - Bugfix for looping images**  
**1.1.1 - Bugfix for loading indicator and removed a log-event**  
**1.1.0 - Added classname for lightbox wrapper and width/height ratio**  
**1.0.0 - Initial Release**