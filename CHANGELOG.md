## v0.3.1-1.0-pre
* Released Nov 19, 2021
* theta now includes getOptions command
* improved documentation
* new buttons
* Added Mac binary compile and apk compile instructions to README
* command line binaries added
* Removed unnecessary containers (from Problems list)
* Deleted not-working _autoBracket button
* Added buttons
    * GetDateTimeZoneButton()
    * SetFunctionNormalButton()
    * SetFunctionSelfTimerButton()
    * SetFunctionMySettingButton()
    * SetWhiteBalanceAutoButton()
    * SetWhiteBalanceDaylightButton()
    * SetWhiteBalanceShadeButton()
    * SetWhiteBalanceCloudyButton()
    * SetWhiteBalanceIncandescent1Button()
    * SetWhiteBalanceIncandescent2Button()
    * SetTimeShiftFirstFrontButton()
    * SetTimeShiftFirstIntervalButton()
    * SetFilterDrcompButton()
    * SetFilterNoiseReductionButton()
* Added how to set Mac permissions

## v0.3.0-alpha
* Released Nov 8, 2021
* theta - command line library to communication with RICOH THETA cameras
* opptheta - command line example program
* thetaf - Flutter widgets to interface with theta package
* oppkey_theta_atk_flutter - demonstration of thetaf Flutter widgets
  * changed name of thetaf_demo to oppkey_theta_atk_flutter
* Added iOS
* Added z1 options button
* Added sc2 options button
* showThumbButton now generates thumbs
* added buttons
    * exposureProgram
    * delete all files
    * list 5 files and list 5 videos
* Added label to all buttons
* Fixed stop video capture button
* Added button styling (red color for delete all)
* Added options 
    * aperture
    * authentication
    * _autoBracket
    * _bitrate
    * _bluetoothPower
    * captureInterval
    * captureMode
    * captureNumber
    * clientVersion
    * _colorTemperature
    * _compositeShootingOutputInterval
    * _compositeShootingTime
    * dateTimeZone
    * exposureCompensation
    * exposureDelay
    * fileFormat
    * _filter
      * moved Hh hdr button to Z1 screen
    * _function
    * _gain
    * getLastFileInfo
    * getLastImageUrl
    * gpsInfo
    * _imageStitching
    * iso
    * isoAutoHighLimit
    * _language
    * _latestEnabledExposureDelayTime
    * _maxRecordableTime
    * _microphone
    * _microphoneChannel
    * networkType
    * offDelay
    * _preset
    * previewFormat
    * remainingPictures
    * remainingSpace
    * remainingVideoSeconds
    * shutterSpeed
    * _shutterVolume
    * sleepDelay
    * _timeShift
    * _topBottomCorrection
    * totalSpace
    * videoStitching
    * _visibilityReduction
    * whiteBalance
    * _wlanFrequency

## v0.2.0-alpha
* Release Oct 15, 2021
* restructed app into StatelessWidget with Provider
* added sc2 thumbnail feature to theta package
* added Android configuration
* new opptheta commands for listFiles
* opptheta listFiles over 100
* interval shooting to create hundreds of test images
* 100 image shoot example

## v0.0.1-alpha
* Released Oct 6, 2021
* Added Oppkey Open Source Software License
* Added commands
    * Info()
    * State()
    * TakePicture()
    * SaveFrames()
    * VideoMode()
    * SetOption()
    * ImageMode()
    * PreviewFormat()
    * ListFiles()
    * TakePictureReady()
    * CheckForIdle()
    * IntervalShoot()
    * PrintFrames()
    * Sc2SaveFrames()
* Moved theta and thetaf into flutter repository