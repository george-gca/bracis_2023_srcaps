---
preload: false
clicks: 1
---

# Computer Vision Tasks

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-30 left-35 w-40 h-40"
    src="images/sisr/ankle1.png"
/>

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 1000, duration: 750 } }"
    class="absolute top-80 left-35 w-40 h-40"
    src="images/sisr/license_plate.png"
/>

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 1750, duration: 750 } }"
    class="absolute top-30 left-95 w-130 h-90"
    src="images/sisr/amazon_deforestation_20070812_lrg.jpg"
/>

<!--
Today, the use of digital imagery is becoming increasingly common in areas previously dominated by other technologies, such as medical diagnostics, surveillance and monitoring by security cameras and satellites, among others. However, some of these applications are still inefficient for their intended use. During the acquisition process, image quality can be degraded due to sensor failure, object displacement, inaccurate focus, or poor lighting. In addition, older equipment is still widely used, in contrast to the evolution of image display technology, such as screens with higher resolution and pixel density.
-->



---
preload: false
clicks: 2
---

# Computer Vision Tasks

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-30 left-60 w-40 h-40"
    src="images/sisr/ankle1.png"
/>

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 1250, duration: 750 } }"
    class="absolute top-30 left-130 w-40 h-40"
    src="images/sisr/ankle2.png"
/>

<img
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 250, duration: 750 } }"
    class="absolute top-80 left-60 w-40 h-40"
    src="images/sisr/plate_lr.png"
/>

<img
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ opacity: 0}"
    :enter="{ opacity: 1, transition: { delay: 1250, duration: 750 } }"
    class="absolute top-80 left-130 w-40 h-40"
    src="images/sisr/plate_sr.png"
/>

<!--
For most applications, high-resolution images are desirable and often necessary, as they provide clearer, sharper information for human perception and a wealth of detail for automatic interpretation and representation by computer programs. However, the acquisition of high-resolution images is not always possible, either due to the limitations of the equipment or the environment in which the image is captured. In these cases, the use of super resolution techniques is a possible solution.
-->



---
preload: false
clicks: 1
---

# Upscaling (Increasing Resolution)

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 500, duration: 1000 } }"
    class="absolute top-30 left-35 w-178 h-100"
    src="images/sisr/CSI.gif"
/>


---
preload: false
clicks: 2
---

# Upscaling (Increasing Resolution)

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 500, duration: 1000 } }"
    class="absolute top-70 left-20 right-0 bottom-0"
    src="images/sisr/19021_x4.png"
/>

<div
    class="absolute top-90 left-60 text-[#2B90B6] -z-1"
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 500, duration: 1000 } }">
    bicubic interpolation
</div>

<arrow v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 500, duration: 1000 } }"
    x1="245"
    y1="330"
    x2="395"
    y2="330"
    color="#564"
    width="3"
    arrowSize="1" />

<img
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 1500, duration: 1000 } }"
    class="absolute top-40 left-110 right-0 bottom-0"
    src="images/sisr/19021_x4_bicubic.png"
/>

<!--
In this context, a commonly used solution is upscaling, in which mathematical interpolation techniques (usually bilinear or bicubic) are applied to create a higher resolution version of the original image. By higher resolution I mean the number of pixels in an image. Although they generate satisfactory results for cases where the increase is 4x, the larger the scale, the less acceptable the results become, making it essential to use more robust resolution increase techniques.
-->



---
preload: false
clicks: 2
---

# Super-Resolution

<img
    v-if="$slidev.nav.clicks >= 1"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 500, duration: 1000 } }"
    class="absolute top-70 left-20 right-0 bottom-0"
    src="images/sisr/19021_x4.png"
/>

<div
    class="absolute top-90 left-63 text-[#2B90B6] -z-1"
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 500, duration: 1000 } }">
    neural network
</div>

<arrow v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 500, duration: 1000 } }"
    x1="245"
    y1="330"
    x2="395"
    y2="330"
    color="#564"
    width="3"
    arrowSize="1" />

<img
    v-if="$slidev.nav.clicks >= 2"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 1500, duration: 1000 } }"
    class="absolute top-40 left-110 right-0 bottom-0"
    src="images/sisr/19021.png"
/>

<!--
In recent years, deep learning has become a popular method for increasing the image resolution, a technique called super resolution. The idea is to train a neural network to learn the mapping between low resolution and high resolution images. The network is trained on a dataset of low and high resolution image pairs. The network is then able to take a low resolution image as input and output a high resolution image. As you can see, the result is much sharper than the bicubic interpolation.
-->



---
preload: false
clicks: 8
---

# Super-Resolution

<v-clicks>

- Most solutions use CNNs
  - SRCNN, EDSR, RDN, RCAN, WDSR, SRGAN, ESRGAN, ...
  - Good visual quality
- CNNs have known drawbacks

</v-clicks>

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
    class="absolute top-110 left-30 w-50 h-15"
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
    class="absolute top-110 left-100 w-50 h-15"
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
    class="absolute top-110 left-170 w-50 h-15"
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

<br>“Instead of aiming for viewpoint invariance in the activities of <mark>"neurons"</mark> that use a single scalar output to summarize the activities of a local pool of replicated feature detectors, artificial neural networks should use local <mark>"capsules"</mark> that perform some quite complicated internal computations on their inputs and then encapsulate the results of these computations into a small vector of highly informative outputs.”

</v-clicks>



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



---
---

# Capsules' Reconstructions

| Properties | Reconstruction |
| --- | --- |
| Scale and thickness | <img src="images/capsules/reconstruction1.png" class="h-9"/> |
| Localized part | <img src="images/capsules/reconstruction2.png" class="h-9"/> |
| Stroke thickness | <img src="images/capsules/reconstruction3.png" class="h-9"/> |
| Localized skew | <img src="images/capsules/reconstruction4.png" class="h-9"/> |
| Width and translation | <img src="images/capsules/reconstruction5.png" class="h-9"/> |
| Localized part | <img src="images/capsules/reconstruction6.png" class="h-9"/> |



---
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
---

# Capsules Networks

<v-clicks>

- Few explorations in SISR tasks
  - Little modifications to the original CapsNet
- Novel concepts have been applied to CapsNets
  - Different capsules types
  - New routing algorithms

</v-clicks>
