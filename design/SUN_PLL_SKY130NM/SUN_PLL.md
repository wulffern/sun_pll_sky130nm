

For a full description of PLL's see [AIC2024
PLL](https://analogicus.com/aic2024/2024/03/08/Lecture-8-Clocks-and-PLLs.html)
lecture.


A PLL can consist of a oscillator (SUN\_PLL\_ROSC) that generates our output frequency. A divider (SUN\_PLL\_DIVN) that generates a feedback frequency that we can compare to the reference. A Phase and Frequency Detector (SUN\_PLL\_PFD) and a charge-pump (SUN\_PLL\_CP) that model the $+$, or the comparison function in our previous picture. And a loop filter (SUN\_PLL\_LPF and SUN\_PLL\_BUF).
