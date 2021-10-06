--- 
layout: page
title : StyleWaveGAN 
permalink: /stylewavegan/
subtitle: "StyleWaveGAN : a style-based drum sound generator" 
feature-img: "assets/img/pexels/computer.jpeg"
tags: [Archive]
---
# StyleWaveGAN: Style-based synthesis of drum sounds with extensive	controls using generative adversarial networks

StyleWaveGAN is a style based drum sound generator
that is a variation of StyleGAN, a state-of-the-art image generator 
by Karras et al. By conditioning StyleWaveGAN on both the type of drum and several audio descriptors, we are able to synthesize waveforms
faster than real-time on a GPU directly in CD quality up to a duration of 1.5s
while retaining a great amount of control over the generation. We also introduce
an alternative to the progressive growing of GANs and experimented on the effect
of dataset balancing for generative tasks. The experiments are carried out on an
augmented subset of a publicly available dataset comprised of different drums
and cymbals.


## Tensorflow-compatible AudioCommons descriptors

Our Tensorflow-compatible descriptors are available [here](https://github.com/ALavault/tf_timbral_models)


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

## Synthesized samples

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


## Descriptor effect : brightness

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



