![](http://pastec.io/assets/logopastec.png)

Pastec Setup Helper Scripts
=======================

This is a set of helper scripts for a quick install of a custom [Pastec](http://pastec.io/doc/oss/) environment.  

Table of Contents
-----------------

- [Project Structure](#project-structure)
- [Usage](#usage)
- [Links](#links)

Project structure
-----------------

| Name                               | Description                                                  |
| ---------------------------------- | ------------------------------------------------------------ |
| [images/](images/)             | JPEG images to be recognized.  |
| [test/](test/)*.jpg             | Sample test image files to be recognized.  |
| [setup.sh](setup.sh)             | Environment setup script.  |
| [server.sh](server.sh)             | Run the server. Just a really simple wrapper script.  |
| [restoreImages.sh](restoreImages.sh)             | Send all images/*.jpg files to the running server.  |
| [test.sh](test.sh)             | Query the running server for the results of all test/ image files.  |

Usage
-----------------
# Installation
```bash
./setup.sh
```

# Run the server
```bash
cd pastec/build
./pastec visualWordsORB.dat
# or in background
#nohup ./pastec visualWordsORB.dat &
```

# Build the visual words from images
See restoreImages.sh.  
We re-build ALL visual words every time the server boots up with [images/*](images/) files.


Links
-----------------

[Visual Word (wikipedia)](https://en.wikipedia.org/wiki/Visual_Word)  
[OpenFoodFacts Slack](https://slack-ssl-openfoodfacts.herokuapp.com/)  
[Bear2b](https://bear2b.com/)  
[MyPackConnect.com](http://mypackconnect.com/training-and-support/)  


