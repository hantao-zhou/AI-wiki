# install

To install JACK on Armbian, you can use the package manager to install the `jackd` package. Here are the steps:

1. Open a terminal window on your Armbian system.

2. Update the package list by running the command:

```
sudo apt-get update
```

3. Install the `jackd` package by running the command:

```
sudo apt-get install jackd
```

4. Start the JACK server by running the command:

```
jackd -d alsa -d hw:0 -r 48000 -p 1024 -n 2
```

This will start the JACK server with the ALSA backend, using the first audio device (`hw:0`), a sample rate of 48000 Hz, a buffer size of 1024 samples, and 2 periods.

Note that you may need to adjust the audio device and other settings based on your specific system and audio hardware. You can also use the `qjackctl` graphical user interface to configure and start the JACK server.

Once the JACK server is running, you can use JACK-compatible audio applications such as Ardour, Qtractor, or Mixxx to connect to the server and route audio between applications.