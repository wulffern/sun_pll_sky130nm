

Phase detector based on TSPC flip flops. 

To analyise circuits like this you need to make some assumptions. 

Let's assume that CP\_DUP\_N = 0  and CP\_DOWN\_N = 0.

We know that ideally CK\_REF and CK\_FB should be the same frequency. 

Let's first check what happens when frequency of CK\_REF > CK\_FB

![](media/pfd_low.svg)

As we can see, the UP signal is mostly high, and the DOWN signal is mostly low.
As such, the charge pump will inject current into the low pass filter and
increase the VCO frequency

When CK\_REF < CK\_FB, then

![](media/pfd_high.svg)

As we can see, the DOWN signal is mostly high, and UP signal is mostly low. 
As such, the charge pump will pull current from the low pass filter and reduce
the VCO frequency

