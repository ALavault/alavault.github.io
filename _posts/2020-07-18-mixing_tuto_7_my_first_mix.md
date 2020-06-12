---
layout: post
title: Simply Mixing Part 7 - My first mix I
tags: [Simply Mixing]
categories: [Mixing]
author: alavault
thumbnail: "assets/img/thumbnails/ssl_cs.jpg"   # Add a thumbnail image on blog view
feature-img: "assets/img/thumbnails/ssl_cs.jpg"   # Add a thumbnail image on blog view
---

# Simply Mixing Part 7 - My first mix I

## 1. The song

We are going to mix the song "Get out of Bed" by Magician Nephew.

The multi-track is available [here](https://multitracks.cambridge-mt.com/MagiciansNephew_GetOutOfBed_Full.zip) at cambridge-mt.com (a great site with multitracks to work on).

It is a soft-rock song with full drums, bass, a few guitars, lead and gang vocals.

## 2. Get in the bus

The multitracks has 31 differents tracks.

Import them into your DAW of choice. And let us explore the routing capabilities of it.

*Routing ?* All your tracks right now are going into your *master bus*. This where all your tracks are summed.

You can also group tracks into *busses*, and this busses can go to other busses or into the master bus.

You can also *send* tracks onto busses, generally for effects.

Here is litte home-made diagram :

![routing](/assets/img/posts/routing.png){:class="img-responsive"}


It describes 2 tracks going into a bus through their *output* (solid arrows) and this bus going through its output to the master bus.

The track names "Guitar 2" *sends* (to the "Delay Bus", with the dashed arrow) and this bus outputs to the master bus.

When you send your track to another bus, you are in fact doing *parallel processing* instead of *serial processing*.

Now that you have a certain idea of how bussing works, let us route the tracks.

I would suggest to bus tracks that are either sonically similar (all clean guitar in one bus, all dirty guitar in another one) or by function (all the drums in one bus, all background vocals in one etc...).


*Why should I bus ?* For convenience and saving computing power. If all the tracks in your bus need something, you can either treat track by track or only once on your bus. If you need to lower all your tracks at one point, you only have to reach one fader. It also reducing the number of parameters to consider in your mix.

*My DAW does not have busses...* Sometimes, DAW like to give other names to these like "groups" in Ableton Live for instance. Check your DAW documentation on routing.

I tend to make a distinction between two kind of busses : the *mixing busses* and the *effect busses*.

*Mixing busses* are receiving only from the outputs of the tracks : they are used for direct processing.

*Effect busses* are used to add effects in parallel : they are not meant to control the levels of the tracks.

Here is how I set up my session for this mix :

```
TODO
```

*That's a lot of effect busses...* Think of it like making an ice cream bowl : if I only had vanilla, it would be boring. But with all of these, I can have chocolate, lemon, pistachio or red bean. I may not use them all because having all these flavour can go terribly wrong, but subtly mixing them give me the tastiest bowl of ice cream.

And I like ice cream. And so should you.

If your DAW implements a system of *VCA fader*, I strongly recommend to set one VCA fader to control all your busses : it will allow you to reduce the level of what is outputted in your master bus, to avoid your limiter working to hard for instance.

Anyway, now we are setup.

## 3. No god, one master

First thing to add before playing anything : a limiter on your master bus (post-fader if your DAW offer you this possibility easily). 

And set it to limit at -0.3dB : this will avoid you clipping your output and discover the not-so-delicate sound of digital clipping.

If you send a signal too hot (i.e. well over 0dB) the limiter will force it to stay under -0.3dB but the sound might get bad because of the overcompression (you may have heard of the term "squashed").

By adding this limiter, you have *inserted* it on the insert slots of your master bus.

Every track has some insert slots where you can put *plugins* like EQ, compressors, delays or distortion.

*Can I put distortion on my master bus ?* Yes, you can. But keep in mind it may sound bad. And if it sounds bad...

I personnaly use the following master bus chain :

> Pre-fader : Full-band compressor - EQ + saturation - Multiband Compressor
> Post-fader : clipper - limiter

*Err... That's a lot...* Yes. Maybe. But it sounds good. So, I keep it that way. For the moment, we will keep it simple, just one limiter.

*I don't have a limiter...* I am pretty sure every DAW has one if you search well. If not, you can still get *Loudmax* : works great and terribly simple.

## 4. First listen

All yours tracks are routed, your limiter is set : let's listen to the song, all faders at 0.

Listen to the song while watching your limiter : if the gain reduction is over -2/3dB, reduce the volume of your busses by such amount.

*Listening to the song ? Anyone can do that.* I mean *activelly listening*. Take mental or physical notes of what you think is wrong (e.g the guitar feels painful, the vocals are dark and too quiet etc...)

Keep also track of the structure of the song : use the marker system provided by your DAW.

Ok. You have finished your first listen. If you feel you have not enough notes, listen again. But no more than 3 times.

Take a break.

And for God's sake, DO NOT LISTEN LOUD. You should be able to have a conversation while monitoring. This will give you less fatigue and protect your hearing.

## 5. Monitoring

But on what kind of system are you monitoring/listening to your mix ?

You should use *full-band* monitors or headphones. Your laptop speakers are a great test for *translation* but not for mixing.

*Full band what ?* A speaker system that does not sound like you are talking into a phone. And it should be stereo.

*Can I use my earbuds/airpods ?* Meh. It is still better than laptop speaker nonetheless.

*And what about hifi headphones ?* First, define hifi. Second, these headphones are probably your best bet to get an okay monitoring experience.

*So what should I get ?* That is a tricky question. Having *studio monitors* is going to be a waste of money in a untreated room. For starters, I would personnaly get a good pair of headphones (<150€/$) from manufacturer somewhat renown. If you can, try them before you buy : some people will find certain headphones uncomfortable or having a "bad" sound.

Anyway, I will assume from here that you have a monitoring source that is totally worthless.


## 6. References

*Can we mix yet ?* No. One last point. References.

References are songs you either like or songs that are similar to the one you are mixing.

Reference track will you ideas on how to set up your levels, how your instruments should be tone-wise, how much effect etc....

Mixing without references, at least in the beginning, will cost you time and effort. By checking regurarly, you can get a comparison on where you are.

But, you should *level match* : your references should be played at the same loudness as the track.

For the song we are mixing, you can find the actual mix. Use it as a reference.

## 7. Starting the mix

*I can mix now !* Yes. You can. But where are you going to start ?

*Errr...* Good answer.

You can actually start with *whatever you want*.

I will show you how I do it as an example. And its going to be the drums first.

*But I wanted to do (insert instrument) first...* You can. But not today. Today, I am driving (the busses). And it's going to be scary for everybody.

Anyway, the strategy for the drums is simple. We will divide in two parts : technique and musicality.


### 7.1 Technical difficulties

For this part, DO NOT LISTEN to any reference track. The aim of this section is to discover the different instruments as well as experimenting.

Every sub-section should be done in *solo* : we are doing the balancing later.

#### 7.1.1 Kick

*Solo* the kick. Listen to it. There something else than the actual kick. This phenomenon is called *bleed*.

Hopefully, the recording  is good : the bleed is limited. If that was not the case, we would need to either replace it or deal with it in some way. Keep in mind, *muting is a valid option*.

##### Eq-ing the kick

Describe how the kick sound : too much/not enough lows, too dark, too bright ?

Adjust an equalizer of your choice and experiment.

Here is a list of (approximate) interesting frequencies to boost or cut :

* 40-60Hz = fundamental
* 500Hz = basket-ball
* 1-2kHz = Beater knock
* 8-10k = click

Experiment : find areas that sounds good/bad, cut/them boost them.

Have fun, but kick in mind it should sound like a kick drum in the end.

##### Compressing the kick

First question : does the kick need compression after your equalization ?

If your answer is "I don't know" or "Yes", put a compressor on and try.

If your answer is "No" put a compressor on anyway. Just to be sure your intuition was right.

##### Other effects ?

You may want to add some reverb to get a looooonnnnnggggg kick. This might be a bad idea.

*Why ?* Putting reverb on direct signal will lengthen the signal and its bleed. Plus, reverb tend to blur the low end.

If you want to put reverb anyway, I would suggest yo put a short reverb (<1s) at a extremely small level (push the mix/send until you hear the effect clearly then back it off until you don't hear it anymore) and in the mix.

A thing to keep in mind, reverb tends to make everything sound good in solo.

*A delay then ?* Actually, a *slapback delay* (<150ms, feedback=0%) can be a good choice. Again, set your level in context.

*(insert any other effect) ?* Try it out. It might work.

#### 7.1.2 Snare Drum

TODO

#### 7.1.3 Overheads

TODO

#### 7.1.4 Room mics

TODO

#### 7.1.5 Percussions and hi-hat

TODO

#### 7.1.6 Toms


### 7.2 The sound of music

#### 7.2.1 Reference time

Have you heard of reference tracks ? Time to go listen to them. Ask yourself the following questions :
* What are the relatives levels between the drums ?
* Does your technical work is on par with the reference (in terms on tonal balance) ?

Fine tune until matched closely : you will work your ear as well as practising EQ and compression.

Check your master bus from time to time : if you are squashing your limiter, it may explain some problems.

#### 7.2.2 Your sound

Here comes the fun part : finding your own "sound".

Experiments with plugins : try using hardware emulation or put constraints (like only stock plugins or only one channel strip).

You will discover things and you could say at this point : I like this on that, I don't like this on that.

Take notes just to be sure you do not forget. 

If you find a good setting, save it as a preset.

This is your first mix, you will not have a sound yet. But you will refine your craft until you get something unique and personal.

I feel like a guru...


---

Do you have questions ? Or some interesting comments ? Click [here](mailto:apeiron.prod@gmail.com?subject=[Simple Music]) to write a mail.

If you liked this, by all means, share the word with the world \o/


