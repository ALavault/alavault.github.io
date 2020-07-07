---
layout: post
title: Simply Mixing Part 4 - Equalizers
tags: [Simply Mixing]
categories: [Mixing]
author: alavault
thumbnail: "assets/img/thumbnails/proq.jpg"   # Add a thumbnail image on blog view
feature-img: "assets/img/thumbnails/proq.jpg"   # Add a thumbnail image on blog view
---

# Simply Mixing Part 4 - Equalizers

This post tries to describe the basics of mixing music. Today, the equalizer and how it works.

## 1. Bestiary of filters

### 1.1 Low-pass and high-pass

The low pass lets the low pass. And a high pass lets the high pass. Done

![filters](/assets/img/posts/filters1.gif){:class="img-responsive"}

On the figure above, we can see the *frequency response* of these filters. The frequency response is the attenuation or gain depending of the frequency of the signal at the input.

*Example :* If I put a sine wave at 1kHz into a lowpass whose cutoff frequency is at 100Hz, it will be attenuated (lowpass and frequency above the cutoff frequency). I am in the steep part of the graph.

*Example :* For a signal with harmonics (for instance, a square wave), the low pass will filter the high order harmonics, making the square closer to a sinewave (it smoothes the edges).

Another parameters of these filter is the "steepness" which is related to the order of the filter. 

![lp](/assets/img/posts/lowpass.png){:class="img-responsive"}

The order of the filter is related to the number of stages present in the implementation of the filter.

As shown on the picture, a "real world" low pass filter does not cut abruptly above a certain frequency (contrary to a *brickwall lowpass*).

The order gives how steep the attenuation is above a *cutoff frequency*.

While you may argue the steeper the better, it is not so true in practice : the results can feel unnatural to the listener.


### 1.2 Shelf filters

A *low shelf filter* is a filter which affect the gain of lower frequencies while having no effect well above its cutoff frequency (in red, -3dB)

A *high shelf filter* is a filter which affect the gain of higher frequencies while having no effect well below its cutoff frequency (in blue, +9dB)


![shelf](/assets/img/posts/shelf.png){:class="img-responsive"}


### 1.3 Bell filters

A *bell filter* is a filter that boost or cut every frequency around a *cutoff frequency* within a certain *bandwidth*. Bandwidth in itself is not used to describe a filter but rather the *quality factor* Q which is the ratio between the absolute bandwidth and the cutoff frequency. 

The higher the quality factor Q, the narrower the region affected is (in terms of frequencies).

![bell](/assets/img/posts/bell.png){:class="img-responsive"}

On this picture, there is a 9 dB boost at 1kHz with a broad/low-Q filter and a narrow/high-Q 3dB but at 100Hz.


## 2. Equalizer

An *equalizer* is a set of filters. The most common structure uses filters in series but parallel equalizer exists.

### 2.1 Digital EQ

In DAWs, all filters are digital. But we are going to call "digital EQ" plugins that do not aim at reproducing any analog/real-life equalizer.

![eq3](/assets/img/posts/eq3.jpg){:class="img-responsive"}


The image above shows the EQ3 from Pro Tools.

The functions are simples :

* Input and output control (for level matching and clipping control)
* Switchable high-pass and low-pass
* High and low shelf/bell switches
* Fully parametric bands (Gain, Q, Frequency)

Some other plugins may have other functionnalities (e.g. notches or high steep bells) but this should cover every case you can encounter.

But they do not colour the signal in any way (except for digital filters artifacts).

### 2.2 Analog EQ

We are going to see some famous analog EQs in their digital emulations.

#### 2.2.1 Pultec EQP-1

![pultec](/assets/img/posts/pultec-eqp-1.webp){:class="img-fluid"}

One of the first equalizers. Two bands (low frequency and high frequency).

The version shown in the image has the option of having a shelf filter on the high frequencies : it is not found originally on the old Pultec.

The bandwidth set the badnwidth of the filters used : when set to the maximum, the bells becomes really wide making them act almost like shelves.

The attenuation on the low band is singular. If the filters were perfect, they would cancel each other. But, because of component tolerances and physics, the attenuation usually occurs at a different frequecy : it gives a boost-cut very pleasing on bass and kick drums.

And  it also uses tubes and transformers, giving a very coloured sound.

#### 2.2.2 Neve 1073

![neve](/assets/img/posts/1073.jpg){:class="img-responsive"}

One of the most revered preamp for recording, the Neve 1073 is also a revered equalizer.
Diagnose the problems 
h-pass filter allows to remove unwanted lows on signal like vocals.


#### 2.2.3 API 550

![api](/assets/img/posts/api-550a.jpg){:class="img-fluid"}

The model shown is the 550a : a more modern version called 550b has a supplementary band (making it 4).

This equalizer is known for its "warm" sound (because of the opamps inside) and its proportionnal Q design : this means the bigger the boost/cut, the narrower the bandwidth gets.

The high and low bands can be switched between shelf and bell and the frequency chosen overlap partially to give a better control.

#### 2.2.4 SSL EQ

![ssl](/assets/img/posts/ssl_eq.jpg){:class="img-fluid"}


While the 1073 or the 550 are semi-parametric equalizer (since some parameters are fixed), the SSL equalizers are fully parametrics on two bands (LMF and HMF) with switchable bell/shelf on low and high bands.

Depending on the version, certain parameters changes but its function stays the same.

I have a personal preference for this equalizer...


## 3. The basics of equalization

Equalizing a signal is similar to caring for a patient : you diagnose, treat and then see if the treatment works or if other problems arise.

### 3.1 Know your signal

Take a step back and use common sense : is it useful to boost 60Hz on a glockenspiel ? No, because a glockenspiel does not have much if any low frequencies : you will only bring up noise (most of the time qualified of *rumble*).

Same on the other end of the spectrum : bringing up 10+k on a sub bass is not a great idea.

Keep in mind that what is not the signal is noise, by definition.

*Analogy :* if you don't know your patient, you will not treat them well.

### 3.2 EQ with a purpose

Don't reach for an equalizer because some big name said "put 100Hz here and dip 3k". 

*Listen* to your track. Are things *sticking out* ? Are things *lacking* ?

If you don't know yet, listen to reference track and compare and come with a diagnosis.


*Analogy :* if you don't know what your patient has, look for the state-of-the-art applying to your patient. Don't give medicine like candies.

### 3.3 EQ what is necessary 

Don't overshoot : putting 18dB cut will get rid of your problem, but is most likely going to kill good things. Experiment to find the good balance between bandwidth, depth of the boost or cut and frequency.

Don't hesitate to experiment with sweeping a high-Q (3-10) bell with a big boost and find problem areas. Keep in mind that while some parts *may* sound like problems, they are part of the signal.

And listen with your ears, not your eyes : 15dB might seem a lot, but it it sometimes necessary. If it sounds good, it is good.


*Analogy :* Don't give a drastic remedy for someone who just have a scratch. Give the appropriate amount even it means trial-and-error. But don't remove vital organs just because they don't look good : you will only get problems.

### 3.4 Final check-up

Now that our fix is applied, check if it actually solved the problem : bypass the plugin in and out and check if it did some good.

If so, you can go fixing your other problems.

If not, start over and listen even more carefully.

Sometimes, you are better off erasing everything and starting over.

*Analogy :* follow-up exams exist for a reason, if the treatment does not work try something else. If it works, work on the other problems your patient has.

### 3.5 Wrapping it up

Be a *doctor* for sound with your EQ :

* Know your signal : what is the frequency range, an approximation fundamental frequency and general sound in commercial mixes.
* Diagnose : what is lacking ? What is sticking out ? Again, compare with healthy mixes.
* Care : Tackle the problem without compromising the life of your signal
* Check : Did you really make an improvement ? If you didn't, start over.
* If it sounds good, it is good.

Sweeping frequencies on commercial mixes is a great way to understand what lives where at first. Take your favourite song and dissect it until you understand every little details.


---

Do you have questions ? Or some interesting comments ? Click [here !](mailto:apeiron.prod@gmail.com?subject=[Simple Music]) to write a mail.

If you liked this, by all means, share the word with the world \o/


