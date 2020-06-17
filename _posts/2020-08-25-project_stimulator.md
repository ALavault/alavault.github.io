---
layout: post
title: Project Stimulator - Introduction
tags: [Electronic, Engineering]
categories: [Engineering]
author: alavault
thumbnail: "assets/img/thumbnails/ssl_cs.jpg"   # Add a thumbnail image on blog view
feature-img: "assets/img/thumbnails/ssl_cs.jpg"   # Add a thumbnail image on blog view
---

# Project Stimulator - Introduction

## 1. In the beginning...

Well, I like electronic engineering (after all, I graduated from a "school of electricity") and I like audio processing. Why not do both ?

The idea of engineering an audio processor came after I saw a video on the *Empirical Lab Distressor*. You can find schematics for a lot of classic gear but I couldn't find any on the Distressor, only statement that it was an "1176 with opamps".

Since I prefer integrated circuits to discrete ones (easier to engineer, tighter tolerances and almost no external adjustment required) I thought "Why not building a Distressor-like unit with a certain of feature I want."

## 2. Features

For those who don't know, the Distressor is a *compressor* with a distortion unit inside.

I would like to have :

- Compression characteristic of the Distressor
- Possibility to switch between feed-forward and feed-back (like the API 2500)
- Variable sidechain high-pass
- Direct Input capability
- In stereo, should have linked capabilities (sum and max) as well as dual-mono.
- A minimal amount of discrete component (mostly ICs) with potential to swap them.
- No transformer on the signal path if not required

Well, that's a lot of hurdles. Like *A LOT*.

## 3. Studying the great Urei 1176

Based on a detailed manual found [here](http://www.advancedaudiorentals.com/docs/Urei%201176LN_manual.pdf), I already have a good starting point.

No need to backward engineer things : woo-hoo !

## 4. More information on the Distressor

Let's read the manual [here](http://www.empiricallabs.com/manuals/distressor_manual.pdf)

The "heart" of the circuit here is the distortion module : I think I will experiment with 2nd and 3rd harmonic generators because I have never done that before.

The conversion from discrete to opamp should be not so hard.




---

Do you need clarifications ? Or maybe you have a nice remark ? Click [here](mailto:apeiron.prod@gmail.com?subject=[Simple Music]) to write a mail.

If you liked this, by all means, share the word with the world \o/


