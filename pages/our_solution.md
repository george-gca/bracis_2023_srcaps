---
preload: false
clicks: 1
---

# SRCaps

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-30 left-7 w-230"
    src="images/model/model_diagram.png"
/>



---
preload: false
clicks: 1
---

# SRCaps

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-50 left-7 w-230"
    src="images/model/capsblock_diagram.png"
/>



---
preload: false
clicks: 1
---

# SRCaps

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-40 left-12 w-220"
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
layout: image-right
image: images/model/adaptive_loss.png
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

<!-- <img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-40 left-12 w-150"
    src="images/model/adaptive_loss.png"
/> -->



---
preload: false
clicks: 2
---

# Why not only PSNR and SSIM?

<figure
    class="absolute top-60 left-10 w-40 h-40"
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    >
    <img
        src="images/metrics/Einstein/Einstein_a.png"
    />
    <figcaption>Reference</figcaption>
</figure>

<figure
    class="absolute top-30 left-70 w-40 h-40"
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    >
    <img
        src="images/metrics/Einstein/Einstein_b.png"
    />
    <figcaption>Contrast enhanced</figcaption>
</figure>

<figure
    class="absolute top-30 left-130 w-40 h-40"
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    >
    <img
        src="images/metrics/Einstein/Einstein_c.png"
    />
    <figcaption>Gaussian noise</figcaption>
</figure>

<figure
    class="absolute top-30 left-190 w-40 h-40"
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    >
    <img
        src="images/metrics/Einstein/Einstein_d.png"
    />
    <figcaption>Salt-pepper noise</figcaption>
</figure>

<figure
    class="absolute top-85 left-70 w-40 h-40"
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    >
    <img
        src="images/metrics/Einstein/Einstein_b.png"
    />
    <figcaption>Speckle noise</figcaption>
</figure>

<figure
    class="absolute top-85 left-130 w-40 h-40"
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    >
    <img
        src="images/metrics/Einstein/Einstein_c.png"
    />
    <figcaption>JPEG compressed</figcaption>
</figure>

<figure
    class="absolute top-85 left-190 w-40 h-40"
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    >
    <img
        src="images/metrics/Einstein/Einstein_d.png"
    />
    <figcaption>Blurred</figcaption>
</figure>