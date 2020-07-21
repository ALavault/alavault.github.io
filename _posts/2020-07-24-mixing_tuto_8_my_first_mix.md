---
layout: post
title: Simply Mixing Part 8 - My first mix I
tags: [Simply Mixing]
categories: [Mixing]
author: alavault
thumbnail: "assets/img/thumbnails/ssl_cs.jpg" # Add a thumbnail image on blog view
feature-img: "assets/img/thumbnails/ssl_cs.jpg" # Add a thumbnail image on blog view
---

# Simply Mixing Part 8 - My first mix I

## 1. The song

We are going to mix the song "Get out of Bed" by Magician Nephew.

The multi-track is available [here](https://multitracks.cambridge-mt.com/MagiciansNephew_GetOutOfBed_Full.zip) at cambridge-mt.com (a great site with multitracks to work on).

It is a soft-rock song with full drums, bass, a few guitars, lead and gang vocals.

## 2. Get in the bus

The multitracks has 31 differents tracks.

Import them into your DAW of choice. And let us explore the routing capabilities of it.

_Routing ?_ All your tracks right now are going into your _master bus_. This where all your tracks are summed.

You can also group tracks into _busses_, and this busses can go to other busses or into the master bus.

You can also _send_ tracks onto busses, generally for effects.

Here is litte home-made diagram :

![routing](/assets/img/posts/routing.png){:class="img-responsive"}

It describes 2 tracks going into a bus through their _output_ (solid arrows) and this bus going through its output to the master bus.

The track names "Guitar 2" _sends_ (to the "Delay Bus", with the dashed arrow) and this bus outputs to the master bus.

When you send your track to another bus, you are in fact doing _parallel processing_ instead of _serial processing_.

Now that you have a certain idea of how bussing works, let us route the tracks.

I would suggest to bus tracks that are either sonically similar (all clean guitar in one bus, all dirty guitar in another one) or by function (all the drums in one bus, all background vocals in one etc...).

_Why should I bus ?_ For convenience and saving computing power. If all the tracks in your bus need something, you can either treat track by track or only once on your bus. If you need to lower all your tracks at one point, you only have to reach one fader. It also reducing the number of parameters to consider in your mix.

_My DAW does not have busses..._ Sometimes, DAW like to give other names to these like "groups" in Ableton Live for instance. Check your DAW documentation on routing.

I tend to make a distinction between two kind of busses : the _mixing busses_ and the _effect busses_.

_Mixing busses_ are receiving only from the outputs of the tracks : they are used for direct processing.

_Effect busses_ are used to add effects in parallel : they are not meant to control the levels of the tracks.

Here is how I set up my session for this mix :

```
TODO
```

_That's a lot of effect busses..._ Think of it like making an ice cream bowl : if I only had vanilla, it would be boring. But with all of these, I can have chocolate, lemon, pistachio or red bean. I may not use them all because having all these flavour can go terribly wrong, but subtly mixing them give me the tastiest bowl of ice cream.

And I like ice cream. And so should you.

If your DAW implements a system of _VCA fader_, I strongly recommend to set one VCA fader to control all your busses : it will allow you to reduce the level of what is outputted in your master bus, to avoid your limiter working to hard for instance.

Anyway, now we are setup.

## 3. No god, one master

First thing to add before playing anything : a limiter on your master bus (post-fader if your DAW offer you this possibility easily).

And set it to limit at -0.3dB : this will avoid you clipping your output and discover the not-so-delicate sound of digital clipping.

If you send a signal too hot (i.e. well over 0dB) the limiter will force it to stay under -0.3dB but the sound might get bad because of the overcompression (you may have heard of the term "squashed").

By adding this limiter, you have _inserted_ it on the insert slots of your master bus.

Every track has some insert slots where you can put _plugins_ like EQ, compressors, delays or distortion.

_Can I put distortion on my master bus ?_ Yes, you can. But keep in mind it may sound bad. And if it sounds bad...

I personnaly use the following master bus chain :

> Pre-fader : Full-band compressor - EQ (+ saturation) - Multiband Compressor
> Post-fader : clipper - limiter

_Err... That's a lot..._ Yes. Maybe. But it sounds good. So, I keep it that way. For the moment, we will keep it simple, just one limiter.

_I don't have a limiter..._ I am pretty sure every DAW has one if you search well. If not, you can still get _Loudmax_ : works great and terribly simple.

## 4. First listen

All yours tracks are routed, your limiter is set : let's listen to the song, all faders at 0.

Listen to the song while watching your limiter : if the gain reduction is over -2/3dB, reduce the volume of your busses by such amount until the gain reduction happens on the highest transients.

_Listening to the song ? Anyone can do that._ I mean _activelly listening_. Take mental or physical notes of what you think is wrong (e.g the guitar feels painful, the vocals are dark and too quiet etc...)

Keep also track of the structure of the song : use the marker system provided by your DAW.

Ok. You have finished your first listen. If you feel you have not enough notes, listen again. But no more than 3 times.

Take a break.

And for God's sake, DO NOT LISTEN LOUD. You should be able to have a conversation while monitoring. This will give you less fatigue and protect your hearing.

## 5. Monitoring

But on what kind of system are you monitoring/listening to your mix ?

You should use _full-band_ monitors or headphones. Your laptop speakers are a great test for _translation_ but not for mixing.

_Full band what ?_ A speaker system that does not sound like you are talking into a phone. And it should be stereo.

_Can I use my earbuds/airpods ?_ Meh. It is still better than laptop speaker nonetheless.

_And what about hifi headphones ?_ First, define hifi. Second, these headphones are probably your best bet to get an okay monitoring experience.

_So what should I get ?_ That is a tricky question. Having _studio monitors_ is going to be a waste of money in a untreated room. For starters, I would personnaly get a good pair of headphones (<150€/\$) from manufacturer somewhat renown. If you can, try them before you buy : some people will find certain headphones uncomfortable or having a "bad" sound.

Anyway, I will assume from here that you have a monitoring source that is totally worthless.

## 6. References

_Can we mix yet ?_ No. One last point. References.

References are songs you either like or songs that are similar to the one you are mixing.

Reference track will you ideas on how to set up your levels, how your instruments should be tone-wise, how much effect etc....

Mixing without references, at least in the beginning, will cost you time and effort. By checking regurarly, you can get a comparison on where you are.

But, you should _level match_ : your references should be played at the same loudness as the track.

For the song we are mixing, you can find the actual mix. Use it as a reference.

## 7. Starting the mix

_I can mix now !_ Yes. You can. But where are you going to start ?

_Errr..._ Good answer.

You can actually start with _whatever you want_.

I will show you how I do it as an example. And its going to be the drums first.

_But I wanted to do (insert instrument) first..._ You can. But not today. Today, I am driving (the busses). And it's going to be scary for everybody.

Anyway, the strategy for the drums is simple. We will divide in two parts : technique and musicality.

### 7.1 Technical difficulties

For this part, DO NOT LISTEN to any reference track. The aim of this section is to discover the different instruments as well as experimenting.

Every sub-section should be done in _solo_ : we are doing the balancing later.

#### 7.1.1 Kick

_Solo_ the kick. Listen to it. There something else than the actual kick. This phenomenon is called _bleed_.

Hopefully, the recording is good : the bleed is limited. If that was not the case, we would need to either replace it or deal with it in some way. Keep in mind, _muting is a valid option_.

##### Eq-ing the kick

Describe how the kick sound : too much/not enough lows, too dark, too bright ?

Adjust an equalizer of your choice and experiment.

Here is a list of (approximate) interesting frequencies to boost or cut :

- 40-60Hz = fundamental
- 500Hz = basket-ball
- 1-2kHz = Beater knock
- 5-10k = click

Experiment : find areas that sounds good/bad, cut/them boost them.

Have fun, but *kick* in mind it should sound like a kick drum in the end (yeah, puns...)

##### Compressing the kick

First question : does the kick need compression after your equalization ?

If your answer is "I don't know" or "Yes", put a compressor on and try.

If your answer is "No" put a compressor on anyway. Just to be sure your intuition was right.

##### Other effects ?

You may want to add some reverb to get a looooonnnnnggggg kick. This might be a bad idea.

_Why ?_ Putting reverb on direct signal will lengthen the signal and its bleed. Plus, reverb tend to blur the low end.

If you want to put reverb anyway, I would suggest yo put a short reverb (<1s) at a extremely small level (push the mix/send until you hear the effect clearly then back it off until you don't hear it anymore) and in the mix.

A thing to keep in mind, reverb tends to make everything sound good in solo.

_A delay then ?_ Actually, a _slapback delay_ (<150ms, feedback=0-1%) can be a good choice. Again, set your level in context.

_(insert any other effect) ?_ Try it out. It might work.

#### 7.1.2 Snare Drum

There are two mics for the snare : a top mic and a bottom mic.

The top microphone is used to capture the stick attack and the sound of the shell.

The bottom microphone is used to capture the sound of the actual snare wires.

*Problem* : these mics are... bleedy.

*Solution* : Gate the top, keep the bottom as is.

*Wait, what ?* The bottom mic is *secondary* : having bleed in it is not as problematic as in the top snare since it is going to be quieter than the top snare. We can use it as "glue fader".

So....

1. Check the phase between the two mics : flip the phase of the bottom with respect to the top. Keep the one the one with the most low end.
2. Gate the top snare mic. You should still hear the ghost notes though.
3. EQ it.
4. Compress it if necessary
5. EQ the bottom snare.
6. Balance them together. The bottom snare should be lower in volume than the top snare.

*No compression on the bottom mic ?* You can do that, but the bottom mic is already "compressed" by design.

Tips :
* EQ zones for the snare top : 200, 2k, 8k. HP@120 (these are rough guidelines)
* Compression on snare drum bus : to add punch, use a compressor with a mix capability with high gain redution, slow attack (30ms) and fast release (100ms). Mix the heavily compressed signal with the dry using the mix knob. This is used to glue both mics while getting some punch.

#### 7.1.3 Overheads

Since we have a room mic, we are going to treat the overheads as cymbals mics.

*Which means high-passing at 2000 Hz ?* I would rather not do that. This is a "live" feeling track, having something else than cymbals in the overheads will provide this feeling.

*But the snare is poking out is there...* Let's squash it down then ! I would personnaly use a limiter in order to bring the snare at the same level as the cymbals.

You can also use fast compressors (e.g. 1176/Distressor) to squash it down.

When you have your dynamics balanced, let's EQ it : cymbals have some harsh resonances in the 4-6k area, mostly on crash cymbals hits. This is a zone to keep in mind when EQ-ing.

To avoid smearing in the low end, you can highpass or reduce the low end. You can also leave it as is.

See, we don't highpass everything !

You can put reverb on the overheads if you think the cymbals don't ring for long enough.

#### 7.1.4 Room mics

Since we have already cymbals in the overheads, we will filter them here.

*But it's part of the sound...* I think of room mics as reverb tracks : I will filter the things I don't think you be extended i.e. kick and cymbals.

As a rough start, highpass and lowpass at 200 and 6000.

Putting your room tracks into a reverb can yield interesting results ;)

Tip : You can use sidechained upward compression to make the snare poke inside the room mics.

*What ?* Put an upward compressor/expander on your room tracks. Sidechain it with the snare top. Adjust so when the snare hits, the upward compressor raises the room by around 2-3 dB.

While subtle, it is a good way to get a "bigger" snarew quickly.



#### 7.1.5 Percussions and hi-hat

No cowbell here. 

Which is GREAT !

But a hi-hat and a tambourine....

First thing first, find where the hi-hat is in the overheads (it is left).

Then, pan the hi-hat to the left where you think it is well placed in the stereo field (in case of doubt, pan it full left).

EQ it.

Bring it at a level where it gives more details to the hi-hat already present in the overheads.

For the tambourine, same deal. Except it is not in the overheads.

Compress the tambourine to avoid spikes (dynamic control) and EQ it. Feather it in a bit. It is a *background element*. Loud tambourine is a crime according to the Geneva Convention you know...



#### 7.1.6 Toms

Well, these toms have a lot of of bleed... Like, a lot.

We can do several things :

* gate them : finding a sweet spot will be a pain and will not sound great...
* edit them : cut the audio file when the toms do not play, leaving only the interesting stuff : tedious but works great.
* leave them be : embrace the bleed.

I would go with either editing or leaving them. 

To make your job harder, we will edit these toms !

*Oh, great...* Yes, editing is tedious and not immediately rewarding. But it will give you an advantage over other lazy mixers.

To edit the toms, we have two different ways :

* consider the toms as a group
* consider each tom individually

By editing the toms as a group, we will have a bit of bleed from unused toms but it should not be a problem.

By editing each toms individually, we can achieve great control over the decay, but it takes more time.

Because I am nice, we are going to edit them as a group !

*Oh, great. Again...* Don't be so grumpy. Let see how we do it !

1. Find where the tom fills happen and where the next crash cymbal hit happens : these is our snippet.
2. Cut every tom track between these points.
3. Put small fades in and out to avoid clicks and pops.

By having our toms as a group, we don't care about gating them.

*But toms rings...* Yes. This is why overheads and room tracks are here : they will fade right into it.

#### 7.1.7 A word about samples

*I heard people use samples instead of the real mics* Yes, it's true. Is it cheating ? No. 

*Why don't we use some ?* This is a tutorial. Learn how to do it on "real" stuff before. Afterwards, you can add samples.

### 7.2 The sound of music

#### 7.2.1 Reference time

Have you heard of reference tracks ? Time to go listen to them. Ask yourself the following questions :

- What are the relatives levels between the drums ?
- Does your technical work is on par with the reference (in terms on tonal balance) ?

Fine tune until matched closely : you will work your ear as well as practising EQ and compression.

Check your master bus from time to time : if you are squashing your limiter, it may explain some problems.

#### 7.2.2 The quest for your sound

Here comes the fun part : finding your own "sound".

Experiments with plugins : try using hardware emulation or put constraints (like only stock plugins or only one channel strip).

You will discover things and you could say at this point : I like this on that, I don't like this on that.

Take notes just to be sure you do not forget.

If you find a good setting, save it as a preset.

This is your first mix, you will not have a sound yet. But you will refine your craft until you get something unique and personal.

I feel like a guru...


## Bonus : My favourite references 

---

Do you have questions ? Or some interesting comments ? Click [here](mailto:apeiron.prod@gmail.com?subject=[Simple Music]) to write a mail.

If you liked this, by all means, share the word with the world \o/
