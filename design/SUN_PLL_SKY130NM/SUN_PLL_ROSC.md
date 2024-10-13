

This is a BAD ring oscillator. It's bad because it has a high VCO gain (large
change in frequency for a small change in oscillator voltage). 

You should use a better one.

The ring oscillator core runs on the buffered low pass filter voltage. To ensure
full scale for the output clock I use a level shifter

