--- 
layout: page
title : StyleWaveGAN
hide: true;
permalink: /stylewavegan_dafx/
subtitle: "StyleWaveGAN : a style-based drum sound generator" 
feature-img: "assets/img/pexels/computer.jpeg"
tags: [Archive]
---
# Subjective evaluation of sound quality and control of drum synthesis with StyleWaveGAN


In this paper we are presenting a study on the subjective evaluation of the sound quality of the proposed StyleWaveGAN as well as a subjective evaluation of the precision of the control using timbre descriptors form the Audio Commons toolbox. 
In the context of professional audio production, StyleWaveGAN is our contribution for fast and simple yet extensive drum generation: it synthesizes waveforms faster than real-time on a GPU directly in CD quality up to a duration of 1.5s while retaining a considerable amount of control over the generation. The simplicity of the control method comes from our differentiable implementation of high-level descriptors based on the AudioCommons models, allowing us for to control the synthesis with ease in terms of interpolation and latent separation when used in conjunction with StyleWaveGAN.
We evaluate our control method with statistical metrics as well as measurement as well as measurement of psychophysical response to the variations of the control. We also perform perceptual tests to evaluate the sound quality of the generation against DrumGAN. 

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

## Perceptive control samples

<table>
<thead>
	<tr>
		<th>Descriptors</th>
		<th>Samples</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>Brightness</td>
		<td>Delta = 0.9 {% include open-embed.html src="/assets/audio/supp_mat/descriptor_effect/snare_1_brightness_55.050_0.850.wav" %}; Delta = 6.7  {% include open-embed.html src="/assets/audio/supp_mat/descriptor_effect/snare_1_brightness_55.050_-6.730.wav" %}</td>
	</tr>
    <tr>
		<td>Depth</td>
		<td>Delta = 1.8{% include open-embed.html src="/assets/audio/supp_mat/descriptor_effect/snare_3_depth_60.280_-1.860.wav" %}; Delta = 8.9 {% include open-embed.html src="/assets/audio/supp_mat/descriptor_effect/snare_3_depth_60.280_8.900.wav" %}</td>
	</tr>
    <tr>
		<td>Warmth</td>
		<td> Delta = 7.5{% include open-embed.html src="/assets/audio/supp_mat/descriptor_effect/snare_1_warmth_29.370_-7.570.wav" %}; Delta = 4.2 {% include open-embed.html src="/assets/audio/supp_mat/descriptor_effect/snare_3_warmth_37.270_-4.270.wav" %}</td>
	</tr>

</tbody>
</table>


## Psychophysical evaluation results

In this section, we are showing all the graphs of CDF obtained through our perceptive evaluation of control quality.
<table>
<thead>
	<tr>
		<th>Descriptors</th>
		<th>Q20</th>
		<th>Q50</th>
		<th>Q80</th>

	</tr>
</thead>
<tbody>
	<tr>
		<td>Brightness (Combined)</td>
		<td><img src="/assets/figures/brightness_abs_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/brightness_abs_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/brightness_abs_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>Brightness (Positive)</td>
		<td><img src="/assets/figures/brightness_pos_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/brightness_pos_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/brightness_pos_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>Brightness (Negative)</td>
		<td><img src="/assets/figures/brightness_neg_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/brightness_neg_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/brightness_neg_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>Brightness (Whole range)</td>
		<td><img src="/assets/figures/brightness_all_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/brightness_all_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/brightness_all_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>Depth (Combined)</td>
		<td><img src="/assets/figures/depth_abs_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/depth_abs_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/depth_abs_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>Brightness (Positive)</td>
		<td><img src="/assets/figures/depth_pos_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/depth_pos_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/depth_pos_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>depth (Negative)</td>
		<td><img src="/assets/figures/depth_neg_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/depth_neg_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/depth_neg_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>depth (Whole range)</td>
		<td><img src="/assets/figures/depth_all_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/depth_all_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/depth_all_ss2.png" alt=""/></td>
	</tr>

	<tr>
		<td>Brightness (Combined)</td>
		<td><img src="/assets/figures/warmth_abs_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/warmth_abs_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/warmth_abs_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>warmth (Positive)</td>
		<td><img src="/assets/figures/warmth_pos_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/warmth_pos_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/warmth_pos_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>warmth (Negative)</td>
		<td><img src="/assets/figures/warmth_neg_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/warmth_neg_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/warmth_neg_ss2.png" alt=""/></td>
	</tr>
	<tr>
		<td>warmth (Whole range)</td>
		<td><img src="/assets/figures/warmth_all_ss0.png" alt=""/></td>
		<td><img src="/assets/figures/warmth_all_ss1.png" alt=""/></td>
		<td><img src="/assets/figures/warmth_all_ss2.png" alt=""/></td>
	</tr>

</tbody>
</table>


<img src="/assets/img/MarineGEO_logo.png" alt="MarineGEO circle logo" style="height: 100px; width:100px;"/>
