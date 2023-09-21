---
---

# Computer Vision Tasks

<figure
    class="absolute top-25 left-35 w-35 h-35"
    v-click
    >
    <img src="images/sisr/ankle1.png" />
    <figcaption class="text-center">MRI of ankle<sup>1</sup></figcaption>
</figure>

<figure
    class="absolute top-76 left-35 w-35 h-35"
    v-after
    >
    <img src="images/sisr/license_plate.png" />
    <figcaption class="text-center">License plate<sup>2</sup></figcaption>
</figure>

<figure
    class="absolute top-25 left-95 w-110 h-70"
    v-after
    >
    <img src="images/sisr/amazon_deforestation_20070812_lrg.jpg" />
    <figcaption class="text-center">Amazon deforestation<sup>3</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1><a href="https://ieeexplore.ieee.org/document/7095900">Super Resolution Techniques for Medical Image Processing</a></Footnote>
  <Footnote :number=2><a href="https://dl.acm.org/doi/10.1145/3123266.3123422">Beyond Human-level License Plate Super-resolution with Progressive Vehicle Search and Domain Priori GAN</a></Footnote>
  <Footnote :number=3><a href="https://earthobservatory.nasa.gov/world-of-change/Deforestation">The Earth Observatory</a></Footnote>
</Footnotes>

<!--
Today, the use of digital imagery is becoming increasingly common in areas previously dominated by other technologies, such as medical diagnostics, surveillance and monitoring by security cameras and satellites, among others. However, some of these applications are still inefficient for their intended use. During the acquisition process, image quality can be degraded due to sensor failure, object displacement, inaccurate focus, or poor lighting. In addition, older equipment is still widely used, in contrast to the evolution of image display technology, such as screens with higher resolution and pixel density.
-->



---
hideInToc: true
---

# Computer Vision Tasks

<figure
    class="absolute top-30 left-60 w-40 h-40"
    v-click
    >
    <img src="images/sisr/ankle1.png" />
    <figcaption class="text-center">LR MRI of ankle<sup>1</sup></figcaption>
</figure>

<figure
    class="absolute top-90 left-60 w-40 h-40"
    v-after
    >
    <img src="images/sisr/plate_lr.png" />
    <figcaption class="text-center">LR license plate<sup>2</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1><a href="https://ieeexplore.ieee.org/document/7095900">Super Resolution Techniques for Medical Image Processing</a></Footnote>
  <Footnote :number=2><a href="https://dl.acm.org/doi/10.1145/3123266.3123422">Beyond Human-level License Plate Super-resolution with Progressive Vehicle Search and Domain Priori GAN</a></Footnote>
</Footnotes>

<figure
    class="absolute top-30 left-130 w-40 h-40"
    v-click
    >
    <img src="images/sisr/ankle2.png" />
    <figcaption class="text-center">HR MRI of ankle<sup>1</sup></figcaption>
</figure>

<figure
    class="absolute top-90 left-130 w-40 h-40"
    v-after
    >
    <img src="images/sisr/plate_sr.png" />
    <figcaption class="text-center">HR license plate<sup>2</sup></figcaption>
</figure>

<!--
For most applications, high-resolution images are desirable and often necessary, as they provide clearer, sharper information for human perception and a wealth of detail for automatic interpretation and representation by computer programs. However, the acquisition of high-resolution images is not always possible, either due to the limitations of the equipment or the environment in which the image is captured. In these cases, the use of super resolution techniques is a possible solution.
-->



---
---

# Upscaling (Increasing Resolution)

<figure
    class="absolute top-30 left-50 w-142"
    v-click
    >
    <img src="images/sisr/CSI.gif" />
    <figcaption class="text-center">Upscaling as seen in fiction<sup>1</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1>Adapted from <a href="https://www.youtube.com/watch?v=I_8ZH1Ggjk0">CSI Zoom Enhance on YouTube</a></Footnote>
</Footnotes>



---
hideInToc: true
---

# Upscaling (Increasing Resolution)

<figure
    class="absolute top-60 left-20 right-0 bottom-0"
    v-click
    >
    <img src="images/sisr/19021_x4.png" />
    <!-- some weird bug forced me to set caption position -->
    <figcaption class="absolute top-21 left-4 right-0 bottom-0">LR image<sup>1</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1><a href="https://ieeexplore.ieee.org/document/937655">A database of human segmented natural images and its application to evaluating segmentation algorithms and measuring ecological statistics</a></Footnote>
</Footnotes>

<div
    class="absolute top-75 left-57 text-[#2B90B6] -z-1"
    v-click
    >
    bicubic interpolation
</div>

<arrow v-after
    x1="245"
    y1="290"
    x2="395"
    y2="290"
    color="#564"
    width="3"
    arrowSize="1" />

<figure
    class="absolute top-30 left-110 right-0 bottom-0"
    v-click
    >
    <img src="images/sisr/19021_x4_bicubic.png" />
    <figcaption class="text-center">Upscaled image</figcaption>
</figure>

<!--
In this context, a commonly used solution is upscaling, in which mathematical interpolation techniques (usually bilinear or bicubic) are applied to create a higher resolution version of the original image. By higher resolution I mean the number of pixels in an image. Although they generate satisfactory results for cases where the increase is 4x, the larger the scale, the less acceptable the results become, making it essential to use more robust resolution increase techniques.
-->



---
---

# Super-Resolution

<figure
    class="absolute top-60 left-20 right-0 bottom-0"
    v-click
    >
    <img src="images/sisr/19021_x4.png" />
    <!-- some weird bug forced me to set caption position -->
    <figcaption class="absolute top-21 left-4 right-0 bottom-0">LR image<sup>1</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1><a href="https://ieeexplore.ieee.org/document/937655">A database of human segmented natural images and its application to evaluating segmentation algorithms and measuring ecological statistics</a></Footnote>
</Footnotes>

<div
    class="absolute top-75 left-63 text-[#2B90B6] -z-1"
    v-click
    >
    neural network
</div>

<arrow v-after
    x1="245"
    y1="290"
    x2="395"
    y2="290"
    color="#564"
    width="3"
    arrowSize="1" />

<figure
    class="absolute top-30 left-110 right-0 bottom-0"
    v-click
    >
    <img src="images/sisr/19021.png" />
    <figcaption class="text-center">Super-resolution image</figcaption>
</figure>

<!--
In recent years, deep learning has become a popular method for increasing the image resolution, a technique called super resolution. The idea is to train a neural network to learn the mapping between low resolution and high resolution images. The network is trained on a dataset of low and high resolution image pairs. The network is then able to take a low resolution image as input and output a high resolution image. As you can see, the result is much sharper than the bicubic interpolation.
-->



---
preload: false
clicks: 8
hideInToc: true
---

# Super-Resolution

<v-clicks>

- Most solutions use CNNs
  - SRCNN, EDSR, RDN, RCAN, WDSR, SRGAN, ESRGAN, ...
  - Good visual quality
- CNNs have known drawbacks

</v-clicks>

<Footnotes separator v-after>
  <Footnote>Adapted from <a href="https://medium.com/hackernoon/uncovering-the-intuition-behind-capsule-networks-and-inverse-graphics-part-i-7412d121798d">Uncovering the Intuition behind Capsule Networks and Inverse Graphics</a></Footnote>
</Footnotes>

<img
    v-if="$slidev.nav.clicks >= 3"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 500 } }"
    class="absolute top-60 left-30 w-50 h-40"
    src="images/capsules/face1.png"
/>

<img
    v-if="$slidev.nav.clicks >= 4"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 500 } }"
    class="absolute top-105 left-30 w-50 h-15"
    src="images/capsules/face_result1.png"
/>

<img
    v-if="$slidev.nav.clicks >= 5"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 500 } }"
    class="absolute top-60 left-100 w-50 h-40"
    src="images/capsules/face2.png"
/>

<img
    v-if="$slidev.nav.clicks >= 6"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 500 } }"
    class="absolute top-105 left-100 w-50 h-15"
    src="images/capsules/face_result2.png"
/>

<img
    v-if="$slidev.nav.clicks >= 7"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 500 } }"
    class="absolute top-60 left-170 w-50 h-40"
    src="images/capsules/face3.png"
/>

<img
    v-if="$slidev.nav.clicks >= 8"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 500 } }"
    class="absolute top-105 left-170 w-50 h-15"
    src="images/capsules/face_result3.png"
/>



---
---

# Capsule Networks

<v-clicks>

- Introduced by Hinton et al. in 2011
  - First successful implementation by Sabour et al. in 2017
- Proposes to solve some of the main flaws found in CNNs
  - Inability to identify spatial hierarchy between elements
  - Lack of rotation invariance
- Inspired by the human visual system
- Achieved good results in classification and segmentation tasks

</v-clicks>



---
layout: center
class: text-center
---

# Why "Capsule"?

<v-clicks>

<br>“Instead of aiming for viewpoint invariance in the activities of <mark>"neurons"</mark> that use a <u>single scalar output</u> to summarize the activities of a local pool of replicated feature detectors, artificial neural networks should use local <mark>"capsules"</mark> that perform some quite complicated internal computations on their inputs and then encapsulate the results of these computations into a <u>small vector of highly informative outputs</u>.”<sup>1</sup>

</v-clicks>

<Footnotes separator v-after>
  <Footnote :number=1><a href="https://link.springer.com/chapter/10.1007/978-3-642-21735-7_6">Transforming Auto-Encoders</a></Footnote>
</Footnotes>

<style>
mark {
    background-color: goldenrod;
    color: #000;
}
</style>



---
preload: false
clicks: 2
---

# Convolution VS Capsule

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-30 left-60 w-40 h-40"
    src="images/capsules/cnn_result_1.png"
/>

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 1000, duration: 750 } }"
    class="absolute top-30 left-130 w-40 h-40"
    src="images/capsules/cnn_result_2.png"
/>

<img
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-80 left-60 w-40 h-40"
    src="images/capsules/capsule_result_1.png"
/>

<img
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 1000, duration: 750 } }"
    class="absolute top-80 left-130 w-40 h-40"
    src="images/capsules/capsule_result_2.png"
/>

<Footnotes separator v-after>
  <Footnote>Adapted from <a href="https://jhui.github.io/2017/11/03/Dynamic-Routing-Between-Capsules">Understanding Dynamic Routing between Capsules (Capsule Networks)</a></Footnote>
</Footnotes>



---
preload: false
clicks: 2
hideInToc: true
---

# Convolution VS Capsule

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-30 left-60 w-40 h-40"
    src="images/capsules/capsule_result_1.png"
/>

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 1000, duration: 750 } }"
    class="absolute top-30 left-130 w-40 h-40"
    src="images/capsules/capsule_result_1.png"
/>

<img
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-80 left-60 w-40 h-40"
    src="images/capsules/capsule_result_3.png"
/>

<img
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 1000, duration: 750 } }"
    class="absolute top-80 left-130 w-40 h-40"
    src="images/capsules/capsule_result_4.png"
/>

<Footnotes separator v-after>
  <Footnote>Adapted from <a href="https://jhui.github.io/2017/11/03/Dynamic-Routing-Between-Capsules">Understanding Dynamic Routing between Capsules (Capsule Networks)</a></Footnote>
</Footnotes>



---
hideInToc: true
---

# Capsules' Reconstructions

| Properties | Reconstruction |
| --- | --- |
| Scale and thickness | <img src="images/capsules/reconstruction1.png" class="h-8"/> |
| Localized part | <img src="images/capsules/reconstruction2.png" class="h-8"/> |
| Stroke thickness | <img src="images/capsules/reconstruction3.png" class="h-8"/> |
| Localized skew | <img src="images/capsules/reconstruction4.png" class="h-8"/> |
| Width and translation | <img src="images/capsules/reconstruction5.png" class="h-8"/> |
| Localized part | <img src="images/capsules/reconstruction6.png" class="h-8"/> |

<Footnotes separator v-after>
  <Footnote>Adapted from <a href="https://dl.acm.org/doi/10.5555/3294996.3295142">Dynamic Routing Between Capsules</a></Footnote>
</Footnotes>



---
hideInToc: true
---

# Capsules Networks

<v-clicks>

- Capsules originally were used in classification tasks
  - Achieved state-of-the-art results
- Capsules networks have been explored in other tasks
  - Object detection
  - Image segmentation
  - Visual question answering

</v-clicks>



---
hideInToc: true
---

# Capsules Networks

<v-clicks>

- Few explorations in SISR tasks
  - Little modifications to the original CapsNet
- Novel concepts have been applied to CapsNets
  - Different capsules types
  - New routing algorithms

</v-clicks>
