---
---

# Computer Vision Tasks

<figure
    v-click
    class="absolute top-25 left-35 w-35 h-35"
    >
    <img src="/images/sisr/ankle1.png" />
    <figcaption class="text-center">MRI of ankle<sup>1</sup></figcaption>
</figure>

<figure
    v-after
    class="absolute top-76 left-35 w-35 h-35"
    >
    <img src="/images/sisr/license_plate.png" />
    <figcaption class="text-center">License plate<sup>2</sup></figcaption>
</figure>

<figure
    v-after
    class="absolute top-25 left-95 w-110 h-70"
    >
    <img src="/images/sisr/amazon_deforestation_20070812_lrg.jpg" />
    <figcaption class="text-center">Amazon deforestation<sup>3</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1><a href="https://ieeexplore.ieee.org/document/7095900">Super Resolution Techniques for Medical Image Processing</a></Footnote>
  <Footnote :number=2><a href="https://dl.acm.org/doi/10.1145/3123266.3123422">Beyond Human-level License Plate Super-resolution with Progressive Vehicle Search and Domain Priori GAN</a></Footnote>
  <Footnote :number=3><a href="https://earthobservatory.nasa.gov/world-of-change/Deforestation">The Earth Observatory</a></Footnote>
</Footnotes>

<!--
the use of digital image is really common in areas like medical diagnostics, remote sensing, surveillance, among others

However, some of these applications are still inefficient, e.g. due to old sensors still broadly in use, problems during the acquisition process, like lightning conditions

Today, the use of digital imagery is becoming increasingly common in areas previously dominated by other technologies, such as medical diagnostics, surveillance and monitoring by security cameras and satellites, among others. However, some of these applications are still inefficient for their intended use. During the acquisition process, image quality can be degraded due to sensor failure, object displacement, inaccurate focus, or poor lighting. In addition, older equipment is still widely used, in contrast to the evolution of image display technology, such as screens with higher resolution and pixel density.
-->



---
hideInToc: true
---

# Computer Vision Tasks

<figure
    v-click
    class="absolute top-30 left-60 w-40 h-40"
    >
    <img src="/images/sisr/ankle1.png" />
    <figcaption class="text-center">LR MRI of ankle<sup>1</sup></figcaption>
</figure>

<figure
    v-after
    class="absolute top-90 left-60 w-40 h-40"
    >
    <img src="/images/sisr/plate_lr.png" />
    <figcaption class="text-center">LR license plate<sup>2</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1><a href="https://ieeexplore.ieee.org/document/7095900">Super Resolution Techniques for Medical Image Processing</a></Footnote>
  <Footnote :number=2><a href="https://dl.acm.org/doi/10.1145/3123266.3123422">Beyond Human-level License Plate Super-resolution with Progressive Vehicle Search and Domain Priori GAN</a></Footnote>
</Footnotes>

<figure
    v-click
    class="absolute top-30 left-130 w-40 h-40"
    >
    <img src="/images/sisr/ankle2.png" />
    <figcaption class="text-center">HR MRI of ankle<sup>1</sup></figcaption>
</figure>

<figure
    v-after
    class="absolute top-90 left-130 w-40 h-40"
    >
    <img src="/images/sisr/plate_sr.png" />
    <figcaption class="text-center">HR license plate<sup>2</sup></figcaption>
</figure>

<!--
For most applications, high-resolution images are desirable and often necessary

clearer, sharper information for human perception and more detail for automatic interpretation

Since the acquisition of HR images is not always possible, the use of techniques to increase image resolution are a great alternative

For most applications, high-resolution images are desirable and often necessary, as they provide clearer, sharper information for human perception and a wealth of detail for automatic interpretation and representation by computer programs. However, the acquisition of high-resolution images is not always possible, either due to the limitations of the equipment or the environment in which the image is captured. In these cases, the use of techniques to increase image resolution are a viable solution.
-->



---
hideInToc: true
preload: false
---

# "Enhance"

<figure
    v-click
    class="absolute top-30 left-50 w-142"
    >
    <img src="/images/sisr/CSI.gif" />
    <figcaption class="text-center">Increasing resolution as seen in fiction<sup>1</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1>Adapted from <a href="https://www.youtube.com/watch?v=I_8ZH1Ggjk0">CSI Zoom Enhance on YouTube</a></Footnote>
</Footnotes>

<!--
most well-known depiction of such a technique is shown here

CSI

The most well-known depiction of such a technique is shown here. In this scene from the TV show CSI, the investigators are able to zoom in on a reflection on a person's glasses and enhance the image to the point where they can read an information and gather new intel. Although this is a fictional scene, it is a good example of the expectations that people have regarding the capabilities of image processing techniques.
-->



---
---

# Upscaling

<figure
    v-click
    class="absolute top-60 left-20 right-0 bottom-0"
    >
    <img src="/images/sisr/19021_x4.png" />
    <!-- some weird bug forced me to set caption position -->
    <figcaption class="absolute top-21 left-4 right-0 bottom-0">LR image<sup>1</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1><a href="https://ieeexplore.ieee.org/document/937655">A database of human segmented natural images and its application to evaluating segmentation algorithms and measuring ecological statistics</a></Footnote>
</Footnotes>

<div
    v-click
    class="absolute top-75 left-57 text-[#2B90B6] -z-1"
    >
    bicubic interpolation
</div>

<arrow
    v-after
    x1="245"
    y1="290"
    x2="395"
    y2="290"
    color="#564"
    width="3"
    arrowSize="1" />

<figure
    v-click
    class="absolute top-30 left-110 right-0 bottom-0"
    >
    <img src="/images/sisr/19021_x4_bicubic.png" />
    <figcaption class="text-center">Upscaled image</figcaption>
</figure>

<!--
a commonly used solution is upscaling

the larger the scale, the less acceptable the results become

In this context, a commonly used solution is upscaling, in which mathematical interpolation techniques (usually bilinear or bicubic) are applied to create a higher resolution version of the original image. By higher resolution I mean the number of pixels in an image. Although they generate satisfactory results for cases where the increase is 4x, the larger the scale, the less acceptable the results become, making it essential to use more robust resolution increase techniques.
-->



---
---

# Super-Resolution

<figure
    v-click
    class="absolute top-60 left-20 right-0 bottom-0"
    >
    <img src="/images/sisr/19021_x4.png" />
    <!-- some weird bug forced me to set caption position -->
    <figcaption class="absolute top-21 left-4 right-0 bottom-0">LR image<sup>1</sup></figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote :number=1><a href="https://ieeexplore.ieee.org/document/937655">A database of human segmented natural images and its application to evaluating segmentation algorithms and measuring ecological statistics</a></Footnote>
</Footnotes>

<div
    v-click
    class="absolute top-75 left-63 text-[#2B90B6] -z-1"
    >
    neural network
</div>

<arrow
    v-after
    x1="245"
    y1="290"
    x2="395"
    y2="290"
    color="#564"
    width="3"
    arrowSize="1" />

<figure
    v-click
    class="absolute top-30 left-110 right-0 bottom-0"
    >
    <img src="/images/sisr/19021.png" />
    <figcaption class="text-center">Super-resolution image</figcaption>
</figure>

<!--
In recent years, deep learning has become a popular method for increasing the image resolution

result is much sharper

In recent years, deep learning has become a popular method for increasing the image resolution, a technique called super-resolution. The idea is to train a neural network to learn the mapping between low resolution and high resolution images. The network is trained on a dataset of low and high resolution image pairs. The network is then able to take a low resolution image as input and output a high resolution image. As you can see, the result is much sharper than the bicubic interpolation.
-->



---
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

<v-clicks>
  <img
      class="absolute top-60 left-30 w-50 h-40"
      src="/images/capsules/face1.png"
  />

  <img
      class="absolute top-105 left-30 w-50 h-15"
      src="/images/capsules/face_result1.png"
  />

  <img
      class="absolute top-60 left-100 w-50 h-40"
      src="/images/capsules/face2.png"
  />

  <img
      class="absolute top-105 left-100 w-50 h-15"
      src="/images/capsules/face_result2.png"
  />

  <img
      class="absolute top-60 left-170 w-50 h-40"
      src="/images/capsules/face3.png"
  />

  <img
      class="absolute top-105 left-170 w-50 h-15"
      src="/images/capsules/face_result3.png"
  />
</v-clicks>

<!--
classify images

does it really understand what it means to be a person?

rather questionable

Most super-resolution solutions use convolutional neural networks, like SRCNN, EDSR, RDN, RCAN, just to name a few, and they generate images with good visual quality. But CNNs have known drawbacks. For instance, let's take this example of a network created to classify images. It correctly classified the image as a person. But does it really understand what it means to be a person? If, for example, we change the position of an eye with the mouth, what result does it generate? It still identified it as a person, although this is rather questionable. What if I rotate it? It should still classify it as a person right? But it does not
-->



---
---

# Capsules

<v-clicks>

- Introduced by Hinton et al. in 2011
  - First successful implementation by Sabour et al. in 2017
- Proposes to solve some of the main flaws found in CNNs
  - Inability to identify spatial hierarchy between elements
  - Lack of rotation invariance
- Inspired by the human visual system
- Achieved good results in classification and segmentation tasks

</v-clicks>

<!--
With these limitations in mind

With these limitations in mind, Hinton and other authors introduced the concept of capsule neural networks in 2011. However, it was only in 2017 that Sabour et al. were able to implement a successful version of this network. Capsule networks propose to solve some of the main flaws found in CNNs, such as the inability to identify spatial hierarchy between elements and the lack of rotation invariance. They are also inspired by the human visual system, which is able to identify objects regardless of their position or rotation. Capsule networks have achieved good results in classification and segmentation tasks.
-->



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
    color: black;
}
</style>

<!--
We extracted this piece of paragraph from the original paper by Hinton

Here, let's focus on the highlighted text

But why the name "capsule"? We extracted this piece of paragraph from the original paper by Hinton, where it states: "Instead of aiming for viewpoint invariance in the activities of neurons that use a single scalar output to summarize the activities of a local pool of replicated feature detectors, artificial neural networks should use local capsules that perform some quite complicated internal computations on their inputs and then encapsulate the results of these computations into a small vector of highly informative outputs."
-->



---
---

# Convolution VS Capsule

<img
    v-click
    class="absolute top-30 left-60 w-40 h-40"
    src="/images/capsules/cnn_result_1.png"
/>

<Footnotes separator v-after>
  <Footnote>Adapted from <a href="https://jhui.github.io/2017/11/03/Dynamic-Routing-Between-Capsules">Understanding Dynamic Routing between Capsules (Capsule Networks)</a></Footnote>
</Footnotes>

<img
    v-after
    class="absolute top-30 left-130 w-40 h-40"
    src="/images/capsules/cnn_result_2.png"
/>

<img
    v-click
    class="absolute top-80 left-60 w-40 h-40"
    src="/images/capsules/capsule_result_1.png"
/>

<img
    v-after
    class="absolute top-80 left-130 w-40 h-40"
    src="/images/capsules/capsule_result_2.png"
/>

<!--
Ok, what does this all even mean?

confidence level

values representing properties of the class

length of vector

Ok, what does this all even mean? So, suppose we train a CNN to identify digits from the MNIST, and we ask it if these numbers are a seven. The outputs of the network show the confidence level of the network that the image is a seven. In the case of a capsule network, its output is not a single value, but a vector of values. Each value represents a property of the class, such as thickness, skew, width, etc. The length of the vector represents the probability that the image is a seven. The capsule network is able to identify the properties of the class and use them to classify it.
-->



---
hideInToc: true
---

# Convolution VS Capsule

<img
    v-click
    class="absolute top-30 left-60 w-40 h-40"
    src="/images/capsules/capsule_result_1.png"
/>

<Footnotes separator v-after>
  <Footnote>Adapted from <a href="https://jhui.github.io/2017/11/03/Dynamic-Routing-Between-Capsules">Understanding Dynamic Routing between Capsules (Capsule Networks)</a></Footnote>
</Footnotes>

<img
    v-after
    class="absolute top-30 left-130 w-40 h-40"
    src="/images/capsules/capsule_result_2.png"
/>

<img
    v-click
    class="absolute top-80 left-60 w-40 h-40"
    src="/images/capsules/capsule_result_3.png"
/>

<img
    v-after
    class="absolute top-80 left-130 w-40 h-40"
    src="/images/capsules/capsule_result_4.png"
/>

<!--
slightly tilted

length of the output vector is the probability

does that hold in practice?

Ok, the length of the output vector is the probability that the image is a seven. So what would be the output of the capsule network if the numbers were rotated, for example? Ideally, the capsule network would still identify the properties of the image and use them to classify it. The length of the vector would be about the same, but it would be slightely tilted, reflecting the rotation of the identified class. But does that hold in practice?
-->



---
hideInToc: true
---

# Capsules' Reconstructions

| Properties            | Reconstruction from capsules                                 |
| --------------------- | ------------------------------------------------------------ |
| Scale and thickness   | <img src="/images/capsules/reconstruction1.png" class="h-8"/> |
| Localized part        | <img src="/images/capsules/reconstruction2.png" class="h-8"/> |
| Stroke thickness      | <img src="/images/capsules/reconstruction3.png" class="h-8"/> |
| Localized skew        | <img src="/images/capsules/reconstruction4.png" class="h-8"/> |
| Width and translation | <img src="/images/capsules/reconstruction5.png" class="h-8"/> |
| Localized part        | <img src="/images/capsules/reconstruction6.png" class="h-8"/> |

<Footnotes separator v-after>
  <Footnote>Adapted from <a href="https://dl.acm.org/doi/10.5555/3294996.3295142">Dynamic Routing Between Capsules</a></Footnote>
</Footnotes>

<!--
does that hold in practice?

Properties of the classes

In this example, we can see the reconstruction of the properties of the image by a trained capsule network. The first column shows the properties of the image, such as scale, thickness, skew, etc. The second column shows the reconstruction of the image based on the properties identified by some of the capsules. As you can see, the network is able to identify the properties of the classes and use them to reconstruct it, like we can observe in the case of scale and thickness for the number 6, or the localized part in the number 4.
-->



---
hideInToc: true
---

# Capsules

<v-clicks>

- Originally were used in classification tasks
  - Achieved state-of-the-art results
- Capsules have been explored in other tasks
  - Object detection
  - Image segmentation
  - Visual question answering

</v-clicks>

<!--
In resume

In resume, capsules were originally used in classification tasks, and achieved state-of-the-art results. They also have been explored in other tasks, such as object detection, image segmentation, and visual question answering.
-->



---
hideInToc: true
---

# Capsules

<v-clicks>

- Few explorations in SISR tasks
  - Little modifications to the original CapsNet
- Novel concepts have been applied to CapsNets
  - Different capsules types
  - New routing algorithms

</v-clicks>

<!--
However

Since then

However, there have been few explorations in SISR tasks. Most of them are little modifications to the original CapsNet. But novel concepts have already been applied to CapsNets, such as different capsules types and new routing algorithms. In this work, we used some novel capsules concepts and applied to the SISR problem.
-->
