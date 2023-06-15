---
layout: page
hide: true
title: "Generative Adversarial Networks for Synthesis and
Control of Drum Sounds"
permalink: /stylewavegan_phd/
subtitle: "Sound Example Pagef"
feature-img: "assets/img/pexels/computer.jpeg"
tags: [Archive]
---

[Introduction](#introduction)
[Databases](#databases)
[StyleWaveGAN](#basic-stylewavegan)
[Timbral Control](#timbral-control)
[Velocity Control](#velocity-control)
[Hybrid Synthesis](#hybrid-synthesis)

# Introduction

<table>
<thead>
	<tr>
		<th>Drum Type</th>
		<th>Description</th>
		<th>Audio</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>Rack Tom</td>
		<td>Yamaha Stage Custom 10" </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/introduction/Tom 10_44_1.wav" %}</td>
	</tr>
	<tr>
		<td>Floor Tom</td>
		<td>Yamaha Stage Custom 16" </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/introduction/Tom 16_68_1.wav" %}</td>
	</tr>
	<tr>
		<td>Snare Drum (wires on)</td>
		<td>Yamaha Stage Custom 14x5.5", played with drumsticks </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/introduction/Snare 4041 Top_90_1.wav" %}</td>
	</tr>
	<tr>
		<td>Snare Drum (wires off)</td>
		<td>Yamaha Stage Custom 14x5.5", played with mallets </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/introduction/Snare 57 Top_218_1.wav" %}</td>
	</tr>
	<tr>
		<td>Kick Drum</td>
		<td>Mapex Black Panther Velvetone 22"x18"</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/introduction/Kick 91_16_1.wav" %}</td>
	</tr>
	<tr>
		<td>Crash Cymbal, low velocity</td>
		<td>Sabian 16" AAX AAXplosion Crash</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/introduction/pp_Crash_M900 Omni_138_1.wav" %}</td>
	</tr>
	<tr>
		<td>Crash Cymbal, high velocity</td>
		<td>Sabian 16" AAX AAXplosion Crash</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/introduction/fff_Crash_M900 Omni_144_1.wav" %}</td>
	</tr>
	<tr>
		<td>Closed Hi-hat</td>
		<td>Zildjian K-Custom Dark Hat 13"</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/introduction/fff_CHH_HH_199_1.wav" %}</td>
	</tr>
	<tr>
		<td>Open Hi-hat</td>
		<td>Zildjian K-Custom Dark Hat 13"</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/introduction/fff_OHH_HH_231_1.wav" %}</td>
	</tr>
</tbody>
</table>

# Databases

## ENST-Drums and augmentation

<table>
<thead>
	<tr>
		<th>Drum Type</th>
		<th>Original</th>
		<th>Lowest augmentation parameters</th>
		<th>Highest augmentation parameters</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>Kick</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/bd_original.wav" %} </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/bd_augmented_extreme_params_low.wav" %}</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/bd_augmented_extreme_params_high.wav" %}</td>
	</tr>
    <tr>
		<td>Snare</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/sd_original.wav" %} </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/sd_augmented_extreme_params_low.wav" %}</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/sd_augmented_extreme_params_high.wav" %}</td>
	</tr>
        <tr>
		<td>Tom</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/tom_original.wav" %} </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/tom_augmented_extreme_params_low.wav" %}</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/tom_augmented_extreme_params_high.wav" %}</td>
	</tr>
            <tr>
		<td>Closed Hi-Hat</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/chh_original.wav" %} </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/chh_augmented_extreme_params_low.wav" %}</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/chh_augmented_extreme_params_high.wav" %}</td>
	</tr>
            <tr>
		<td>Open Hi-Hat</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/ohh_original.wav" %} </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/ohh_augmented_extreme_params_low.wav" %}</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/ohh_augmented_extreme_params_high.wav" %}</td>
	</tr>

</tbody>
</table>

## Apeira Drums

<table>
<thead>
	<tr>
		<th>Drum Type</th>
		<th>Description</th>
		<th>Audio</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>Kick Drum trigger</td>
		<td>Yamaha Stage Custom 22" </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/bd_augmented_extreme_params_low.wav" %}</td>
	</tr>
	<tr>
		<td>Snare Drum Trigger</td>
		<td>Yamaha Stage Custom 14" </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/bd_augmented_extreme_params_low.wav" %}</td>
	</tr>
	<tr>
		<td>Tom Trigger</td>
		<td>Yamaha Stage Custom 10" </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/bd_augmented_extreme_params_low.wav" %}</td>
	</tr>
	<tr>
		<td>Snare Drum Trigger, low velocity</td>
		<td>Yamaha Stage Custom 14" </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/bd_augmented_extreme_params_low.wav" %}</td>
	</tr>
	<tr>
		<td>Snare Drum Trigger, high velocity</td>
		<td>Yamaha Stage Custom 14" </td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/data/bd_augmented_extreme_params_low.wav" %}</td>
	</tr>
</tbody>
</table>

# StyleWaveGAN

## Basic StyleWaveGAN

### Synthesized samples on augmented ENST-Drums

<table>
<thead>
	<tr>
		<th>Drum Type</th>
		<th>Samples</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>Kick</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/synthesis/bd_synthesis_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/synthesis/bd_synthesis_2.wav" %}</td>
	</tr>
    <tr>
		<td>Snare</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/synthesis/sd_synthesis_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/synthesis/sd_synthesis_2.wav" %}</td>
	</tr>
    <tr>
		<td>Tom</td>
		<td> {% include open-embed.html src="/assets/audio/supp_mat/synthesis/tom_synthesis_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/synthesis/tom_synthesis_2.wav" %}</td>
	</tr>
    <tr>
		<td>Closed Hi-Hat</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/synthesis/chh_synthesis_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/synthesis/chh_synthesis_2.wav" %}</td>
	</tr>
    <tr>
		<td>Open Hi-Hat</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/synthesis/ohh_synthesis_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/synthesis/ohh_synthesis_2.wav" %}</td>
	</tr>
</tbody>
</table>

## Timbral Control

### Descriptor effect : brightness

<table>
<thead>
	<tr>
		<th>Brightness (%)</th>
		<th>Samples</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>40</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_40_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_40_2.wav" %} </td>
	</tr>
	<tr>
		<td>50</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_50_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_50_2.wav" %} </td>
	</tr>
	<tr>
		<td>60</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_60_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_60_2.wav" %} </td>
	</tr>
	<tr>
		<td>70</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_70_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_70_2.wav" %} </td>
	</tr>
	<tr>
		<td>80</td>
		<td>{% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_80_1.wav" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_80_2.wav" %} </td>
	</tr>

</tbody>
</table>

## Velocity Control

Snare Crescendo: {% include open-embed.html src="/assets/audio/supp_mat/data/ms20_snare_1.wav" %}

# Hybrid Synthesis

TODO
