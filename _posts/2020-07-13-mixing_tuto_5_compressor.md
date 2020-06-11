---
layout: post
title: Simply Mixing Part 5 - Compressors
tags: [Simply Mixing]
author: alavault
thumbnail: "assets/img/thumbnails/distressor.jpg"   # Add a thumbnail image on blog view
feature-img: "assets/img/thumbnails/distressor.jpg"   # Add a thumbnail image on blog view
---

# Simply Mixing Part 5 - The compressors

This post tries to describe the basics of mixing music. Today, the compressor.

## 1. Inside a compressor

A *dynamic range compressor*, commonly referred as *compressor* is a device or software designed to reduce the volume of loud sounds or amplifies quiet sounds : it is effectively reducing/compressing an audio signal's dynamic range. 

![inside_comp](/assets/img/posts/comp.jpg){:class="img-responsive"}

The picture above shows the two main structure of compressors : feedback and feed-forward. Feedback compressor are generally older in design than feed-forward compressors.

The *detector circuit* is a circuit (generally an enveloppe detector) used to control the VCA.

VCA stands for *Voltage Controlled Amplifier* : it is an amplifier that changes its gain based on a control input.

To control the VCA, the detector circuit output is sent to a gain control circuit (G) making the compression happen or not.

THAT Corp. has incredibly interesting design notes on dynamic compressor [here](http://www.thatcorp.com/Design_Notes.shtml)




## 2. Basic compressor

Most DAW include a compressor. Here is the one from Presonus Studio One :

![compressor](/assets/img/posts/compressor.png){:class="img-responsive"}

### 2.1 First date

While the first contact with a compressor can be daunting, making it work is even worse.

But let's make a quick review of the different parameters which are the basics.

* Ratio : gives the amount of compression. A ratio of 2:1 means the input should be 2dB above the *threshold* to make the output rise by 1dB.
* Threshold : gives at which level the compressor should start working. The lower the more compression.
* Knee : represents how soft the transition below/above the threshold is. The lower the harder.

The picture below shows the difference between a hard knee and a soft knee :

![softknee](/assets/img/posts/softknee.png){:class="img-responsive"}

* Input gain : if you need to. Self explanatory.
* Gain : using a compressor will lead to *gain reduction* : to compensate for the loss, this gain control (also known as *makeup gain*) is used to match compressed and uncompressed signals in terms of loudness.
* Mix : in percent. A 0% mix means the non compressed signal, 100% the compressed signal. By mixing in between, you can get intersting effects with extreme compression. More on that later.
* Attack : Time the compressor will take to achieve most of the gain reduction.
* Release : Time the compressor will take to roughly go back to 0dB of gain reduction after the signal goes under the threshold.
* Auto/Adaptative : Special controls for specials cases.

### 2.2 Second date

Let's look at the rest.

*Lookahead* : this exists only on digital compressor. This is used to make the compressor look "in the future" to trigger on fast transients.
*Stereo Link: when stereo linked, the compressor reacts to the sum of the left and right channels. When unlinked, each channel does its thing. For instance, with stereo drums, if there is a big tom hit on the right channel, the left channel will be reduced if stereo linked but not if unlinked.

The sidechain circuit of a compressor if the union of the enveloppe detector and the gain control circuit. It also means we can control the compressor based on another signal.

*Sidechain (No sidechain)* : default state. The signal compressed by the compressor is the signal entering it. If another channel was selected, the gain reduction would be induced by this auxiliary channel.

*Low-cut/High-cut* : sometimes, it is undesirable to have the compressor triggering on certain frequency : for instance, you may want your drum compression to not trigger when the kick plays because it makes everything duck. You will use these filters for this : by raising the lowcut, you will get the compression you need on the rest of the kit but the kick.

### 2.3  Let's leave it there.

Compressors are complex devices and requires a lot of trail and error before having a certain mastery of them.

We will see in more details what can be done with a compressor, but for the moment, let's leave it there.




## 3. Analogue emulations

Some plugin manufacturers made digital emulations of analogue hardware. We are going to see here the most commonly emulated compressors.

### 3.1 Urei 1176

#### 3.1.1 Presentation

The Urei 1176 is a fast-FET based compressor. Several versions are emulated, mostly the revision A (blue-stripe) and revision D (black-face).

These are fast compressors, known for having a certain sonic quality. Some people use them as line amplifiers (i.e. without any compression happening) just to colour the sound. This can be described as a high frequency lift (presence and grit, especially on the Blue-Stripe rev) and more low-mids (I feel that especially on Blackface revisions).

![1176](/assets/img/posts/1176.jpg){:class="img-responsive"}


The controls are simple :

* Input gain
* Output gain
* Attack (1 is slow, 7 is fast)
* Release (1 is slow, 7 is fast)
* Ratio

Contrary to most compressors, the 1176 have their attack and release controls reversed : the fastest is on the right/7, the slowest in on the left/1.

You will set it up just like any "normal" compressor. You will have to do :

* Set the ratio high
* Turn the input gain high (it is equivalent to the threshold control)
* Attack to 1, Release to 7
* Set up to taste like any normal compressor

#### 3.1.2 British Mode

On the real hardware version, pressing all the buttons at the same time will make the 1176 enter the so-called *British Mode*. This is transcribed in certain plugins (UAD and Waves at least).

This makes the compressor going crazy on its attack and release creating an interesting effect. It also seems to distort low instruments transient in an aesthetically pleasing result. 

This is mostly used on overheads and room mics.

#### 3.1.3 Dr Pepper preset

A preset known as "Dr Pepper" is commonly used on 1176 compressors as a good starting point. It is simply :
* Attack on 3/10 o'clock
* Release on 5/2 o'clock
* Ratio of 4

This story seems to be related to a Dr Pepper commercial stating it was healthy to drink Dr Pepper at 10am, 2pm and 4pm. While this is dubious from a nutrition stand point, it sounds great on most signals into an 1176.

### 3.2 Teletronix LA-2A

The Teletronix LA-2A is an tube-based electro-optical compressor. This means the amplifier circuitry is based on tube while the gain control is made using a photo-cell. The photo-cell is simply a light bulb near a photo-sensitive element : the more signal goes into the light bulb, the more it lights the photo sensitive element, the more the signal is dipped.

![la2a](/assets/img/posts/la2a.jpg){:class="img-responsive"}


However, because of the property of the optical cell, the attack and release time are quite slow, resulting in a levelling effect. This is why the LA-2A is described as a "levelling amplifier".

The LA-2A is incredibly simple in terms of controls. There :
* Output gain
* Peak reduction (i.e. threshold)
* Limit/Compress (set up the ratio between high (10 ?) and low (3 ?))

On the back of the unit, a screw is present to let the user adjust the sidechain filter : it means the compressor can react to the full spectrum or react preferentially to certain frequencies (the highs).

Since the attack and release are fixed, you only have to adjust the *peak reduction* control to get the amount of compression you want.

### 3.3 SSL G-series Bus Compressor

The SSL G compressor is a VCA-based compressor.

![ssl](/assets/img/posts/ssl_g.jpg){:class="img-responsive"}

Originally integrated to the SSL G-series consoles, this compressor made a name for itself for "gluing" mixes (it is also known as the "glue compressor").

Not as coloured as the 1176 or the LA-2A, the SSL G compressor is clean yet punchy.

It is the closest match to the "basic" digital compressor.

A note on the *Auto* release : this is a special case where the compressor release fast on fast moving signals and slower on slow moving signals.

## 4. The limiter : a close relative

Limiters are compressors whose ratio are higher than 20:1 and the attack time are extremely short. They are mostly used to get rid of peaks (for instance on an acoustic guitar) or to avoid the digital output crossing the dreaded 0dBFS limit (in other words, to avoid hard clipping on the output).

They generally have long release time (>200ms) making them useful to keep instruments under control (a bass for instance).

You see generally limiters used as the last effect on the master bus (just before the output then) or on non-foreground tracks (to avoid a peaking effect).

## 5. My special picks 

* TDR Kotelnikov : first thing to do : read The F***ing Manual. But an amazingly clean and powerful compressor : the first thing I put on the master bus.
* Analog Obsession Buster : an emulation of the SSL G-compressor. I use it mostly on the drum bus to tame the whole drum kit.
* Analog Obsession Fetish : an emulation of the 1176 but can get quite heavy on the CPU. Great on vocals.
* Sonic Anomaly SLAX : a opto-style compressor with options. Great to bring vocals forward while giving them a nice colour.
* Loudmax : a limiter plugin. Simple and effective. Period.

And most of all, they are free !

---

Do you have questions ? Or some interesting comments ? Click [here !](mailto:apeiron.prod@gmail.com?subject=[Simple Music]) to write a mail.

If you liked this, by all means, share the word with the world \o/


