# FFmpeg recording script
This is a simple script for recording your screen as well as mic audio with ffmpeg.

If you are running pulseaudio or pipewire-pulse as well as X11, use the "leacy-record" script.

If you are using pure alsa, use the "record"  script.

If you are running just pipewire, without pulseaudio as a back end, use pipewire-record (in developement)

## Usage

### legacy-record
Recording can be done with:

`$ record <filename>`

If you want to change the default resolutions and settings, modify the variables at the top of the script

### record
Recording can be done with:

`$ record <alsa device number> <filename>`

To get the alsa device number, run `arecord -l`, identify which microphone you want to use, and put the card number.

Eg:

```
$ arecord -l

**** List of CAPTURE Hardware Devices ****
card 1: Generic_1 [HD-Audio Generic], device 0: <name of device. This will differ based on your sound device> 

  Subdevices: 1/1

  Subdevice #0: subdevice #0

card 2: Device [USB Microphone], device 0: USB Audio [USB Audio]

  Subdevices: 1/1

  Subdevice #0: subdevice #0
```

*NOTE: The USB Microphone is an example. The number of sound devices will vary as will their card number*

Now, using the example output above, if I wanted to use the USB Microphone to record, I would run:

`record 2 <filename>`

since the card number of the USB microphone is 2

### pipewire-record
WIP

## Installation
Clone the repository:

`git clone https://github.com/Ical-a/recording`

navigate to where you have cloned it:

`cd ...`

Run:

`# ./install.sh`
*NOTE: Run install script as root*
