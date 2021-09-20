--- 
layout: page
title : StyleWaveGAN 
permalink: /stylewavegan/
subtitle: "StyleWaveGAN : a style-based drum sound generator" 
feature-img: "assets/img/pexels/computer.jpeg"
tags: [Archive]
---
# StyleWaveGAN: Style-based synthesis of drum sounds with extensive	controls using generative adversarial networks

## Data and augmented samples
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
		<td>Column 1</td>
		<td>Column 2</td>
		<td>Column 3</td>
		<td>Column 4</td>
	</tr>
	<tr>
		<td>Custom Table Content</td>
		<td>Column 4</td>
		<td>Column 5</td>
	</tr>
</tbody>
</table>


| Drum Type | Original | Lowest augmentation parameters | Highest augmentation parameters |
| ---      | ---      | ---      | --- |
| Kick Drum   | {% include open-embed.html src="/assets/audio/supp_mat/data/bd_original.wav" %}   | cell 3   | cell x |
| Snare Drum | {% include open-embed.html src="/assets/audio/supp_mat/data/sd_original.wav" %} | cell 6  | cell y |
| Tom   | {% include open-embed.html src="/assets/audio/supp_mat/data/tom_original.wav" %}         | cell 9   | cell z|
| Closed Hi-Hat   | {% include open-embed.html src="/assets/audio/supp_mat/data/chh.wav" %}         | cell 9   | cell z|
| Open Hi-Hat    | {% include open-embed.html src="/assets/audio/supp_mat/data/ohh_original.wav" %}         | cell 9   | cell z|

## Synthesized samples

Kick Drum : {% include open-embed.html src="/assets/audio/supp_mat/synthesis/bd_synthesis_1.wav" %}{% include open-embed.html src="/assets/audio/supp_mat/synthesis/bd_synthesis_2.wav" %}

Snare Drum : {% include open-embed.html src="/assets/audio/supp_mat/synthesis/sd_synthesis_1.wav" %}{% include open-embed.html src="/assets/audio/supp_mat/synthesis/sd_synthesis_2.wav" %}

Tom : {% include open-embed.html src="/assets/audio/supp_mat/synthesis/tom_synthesis_1.wav" %}{% include open-embed.html src="/assets/audio/supp_mat/synthesis/tom_synthesis_2.wav" %}

Closed Hi-Hat : {% include open-embed.html src="/assets/audio/supp_mat/synthesis/chh_synthesis_1.wav" %}{% include open-embed.html src="/assets/audio/supp_mat/synthesis/chh_synthesis_2.wav" %}

Open Hi-Hat : {% include open-embed.html src="/assets/audio/supp_mat/synthesis/ohh_synthesis_1.wav" %}{% include open-embed.html src="/assets/audio/supp_mat/synthesis/ohh_synthesis_2.wav" %}

## Descriptor effect : brightness

| Brightness | Samples |
| --- | --- |
| 40 | Snare Drum : {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_40_1.wav
" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_40_2.wav" %}|
| 50 | Snare Drum : {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_50_1.wav
" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_50_2.wav" %}|
| 60 | Snare Drum : {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_60_1.wav
" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_60_2.wav" %}|
| 70 | Snare Drum : {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_70_1.wav
" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_70_2.wav" %}|
| 80 | Snare Drum : {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_80_1.wav
" %} {% include open-embed.html src="/assets/audio/supp_mat/brightness_effect/sd_brightness_80_2.wav" %}|

# Tensorflow-compatible AudioCommons descriptors

Our Tesorflow-compatible descriptors are available at : [here](https://www.youtube.com/watch?v=0fO7hQaQczg)

| Command | Description |
| --- | --- |
| `git status` | List all *new or modified* files |
| `git diff` | Show file differences that **haven't been** staged |
