---
---

# SRCaps

<img
    class="absolute top-30 left-7 w-230"
    v-click
    src="images/model/model_diagram.png"
/>



---
hideInToc: true
---

# SRCaps

<img
    class="absolute top-50 left-7 w-230"
    v-click
    src="images/model/capsblock_diagram.png"
/>



---
hideInToc: true
---

# SRCaps

<img
    class="absolute top-40 left-12 w-220"
    v-click
    src="images/model/upnet_diagram.png"
/>



---
---

# Experiments Setup

<v-clicks>

- Training
  - DIV2K training set
  - Losses: L1, SSIM, MS-SSIM, L1 after a few RDCBs, L1 + edge map with sobel filter, 3-PSNR, 3-SSIM, <u>adaptive loss</u>
  - Model configuration: refer to paper
- Validation
  - DIV2K validation set, Set5, Set14, BSD100 (B100), Urban100
  - Metrics: PSNR, SSIM, MS-SSIM, FLIP

</v-clicks>



---
layout: figure-side
figureCaption: The general loss function (left) and its gradient (right) for different values of its shape parameter α
figureFootnoteNumber: 1
figureUrl: images/model/adaptive_loss.png
preload: false
clicks: 1
---

# Adaptive Loss

| $\alpha$  | Loss function                      |
| --------- | ---------------------------------- |
| 2         | L2                                 |
| 1         | Charbonnier / pseudo-Huber / L1-L2 |
| 0         | Cauchy/Lorentzian                  |
| -2        | Geman-McClure                      |
| $-\infty$ | Welsch/Leclerc                     |

<Footnotes separator v-after>
  <Footnote :number=1>Adapted from <a href="https://openaccess.thecvf.com/content_CVPR_2019/html/Barron_A_General_and_Adaptive_Robust_Loss_Function_CVPR_2019_paper.html">A General and Adaptive Robust Loss Function</a></Footnote>
</Footnotes>



---
---

# Why not only PSNR and SSIM?

<figure
    class="absolute top-55 left-10 w-40 h-40"
    v-click
    >
    <img src="images/metrics/Einstein/Einstein_a.png" />
    <figcaption class="text-center">Reference</figcaption>
</figure>

<figure
    class="absolute top-25 left-70 w-40 h-40"
    v-click
    >
    <img src="images/metrics/Einstein/Einstein_b.png" />
    <figcaption class="text-center">Contrast enhanced</figcaption>
</figure>

<figure
    class="absolute top-25 left-130 w-40 h-40"
    v-after
    >
    <img src="images/metrics/Einstein/Einstein_c.png" />
    <figcaption class="text-center">Gaussian noise</figcaption>
</figure>

<figure
    class="absolute top-25 left-190 w-40 h-40"
    v-after
    >
    <img src="images/metrics/Einstein/Einstein_d.png" />
    <figcaption class="text-center">Salt-pepper noise</figcaption>
</figure>

<figure
    class="absolute top-80 left-70 w-40 h-40"
    v-after
    >
    <img src="images/metrics/Einstein/Einstein_e.png" />
    <figcaption class="text-center">Speckle noise</figcaption>
</figure>

<figure
    class="absolute top-80 left-130 w-40 h-40"
    v-after
    >
    <img src="images/metrics/Einstein/Einstein_f.png" />
    <figcaption class="text-center">JPEG compressed</figcaption>
</figure>

<figure
    class="absolute top-80 left-190 w-40 h-40"
    v-after
    >
    <img src="images/metrics/Einstein/Einstein_g.png" />
    <figcaption class="text-center">Blurred</figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote>Adapted from <a href="https://www.spiedigitallibrary.org/journals/journal-of-electronic-imaging/volume-19/issue-1/011003/Content-weighted-video-quality-assessment-using-a-three-component-image/10.1117/1.3267087.short?SSO=1">Content-weighted video quality assessment using a three-component image model</a></Footnote>
</Footnotes>
