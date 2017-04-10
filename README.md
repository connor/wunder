# wunder Mac App

This is a Mac App that sits in your status bar and updates it with tasks
due Today in Wunderlist.

# Steps to use:

1) Download or clone the repo.

2) Rename `WUNDERLIST_API_KEYS_EXAMPLE.json` to be `WUNDERLIST_API_KEYS.json`.

3) Create an [App](https://developer.wunderlist.com/apps) to consume the Wunderlist API.

# Steps to contribute:

1. Follow the steps above.

2. If you are modifying the models at all, install [Plank](https://github.com/pinterest/plank), which is used for model generation (via the `./generate_models.sh`) script.

3. Run `pod install` and open up the `.xcworkspace` file.

# Background

I began using [Wunderlist](https://wunderlist.com) about 6 months ago after years of using [Things](http://culturedcode.com/things/). A few years ago, I wrote [this post](https://medium.com/@connor/thngs-app-or-how-i-get-stuff-done-dae36a43277a) on a little Mac app for Things to see what I had left to do that day. I decided to port it over to Wunderlist last weekend.

The code for the Things app is [here](https://github.com/connor/thngs),
if you're interested.

