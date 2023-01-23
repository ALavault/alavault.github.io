---
layout: page
hide: true
title: StyleWaveGAN
permalink: /stylewavegan_phd/
subtitle: "StyleWaveGAN etc"
feature-img: "assets/img/pexels/computer.jpeg"
tags: [Archive]
---

# Introduction

Snare 1: {% include open-embed.html src="/assets/audio/supp_mat/data/tt.wav" %}

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
d
## Velocity Control

Snare Crescendo: {% include open-embed.html src="/assets/audio/supp_mat/data/ms20_snare_1.wav" %}

# Appendix - Audio Samples

## Kick and Snare with Korg MS20

Snare 1: {% include open-embed.html src="/assets/audio/supp_mat/data/ms20_snare_1.wav" %}

Snare 2: {% include open-embed.html src="/assets/audio/supp_mat/data/ms20_snare_2.wav" %}

Kick: {% include open-embed.html src="/assets/audio/supp_mat/data/ms20_kick_1.wav" %}

## Snare with FM synthesis

Snare with FM only: {% include open-embed.html src="/assets/audio/supp_mat/data/fm_snare_1.wav" %}

Snare with FM + noise: {% include open-embed.html src="/assets/audio/supp_mat/data/fm_snare_2.wav" %}

## Beyond Realism

Hard Kick with MS20: {% include open-embed.html src="/assets/audio/supp_mat/data/hard_kick_ms20.wav" %}

Hard Kick with processed Apeira Drums: {% include open-embed.html src="/assets/audio/supp_mat/data/hard_kick_apd.wav" %}
