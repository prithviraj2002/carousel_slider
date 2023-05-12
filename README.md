# passprt_test

A single screen, with an autoplay image carousel to display multiple images. With star rating, trek details and a horizontal scrollable row to explore more popular treks.

## Project Overview
1) The project begins at main.dart file
2) The screen directory contains HomeScreen which contains the main UI
3) The repo directory contains repo.dart file which extracts data from json
4) The model directory contains Tour.dart file which is a Tour class generated from Json file.
5) The widget directory contains all the reusable widgets of the single screen app.
   It contains:
    -> grid-tile-footer.dart which is the reusable footer for popular trek images.
    -> image-tile.dart which contains the reusable ImageTile component.
    -> popular-trek-row.dart contains a horizontal scorllable list of popular treks by returning a sized ListView.builder()
    -> star-rating.dart contains the reusable row of stars which are used to denote rating of a trek.
    -> trek-detail-list contains the reusable column of trek details.
    
## Packages used
1) flutter_rating_bar: ^4.0.1
2) carousel_slider: ^4.2.1
3) carousel_indicator: ^1.0.6

## User Interface

### 1 Snapshot 1


![passprt-1](https://github.com/prithviraj2002/passprt_test/assets/82358330/ff9b61ec-8925-46ea-8928-2ad97a0106c5)


### 2 snapshot 2


![passprt-2](https://github.com/prithviraj2002/passprt_test/assets/82358330/3c5da786-8523-4eea-9339-a3a11e7baef6)


### 3 snapshot 3


![passprt-3](https://github.com/prithviraj2002/passprt_test/assets/82358330/fc1a6ae6-d512-431d-ac05-6eaafb4a9b5e)


## Working Preview

https://github.com/prithviraj2002/passprt_test/assets/82358330/b192e434-44cf-4a9a-9952-36305c26a97d

