---
---

# SRCaps

<figure
    v-click
    class="absolute top-30 left-7 w-230"
    >
    <img src="/images/model/model_diagram.png" />
    <figcaption class="text-center">Model diagram</figcaption>
</figure>

<!--
This is the diagram of our model, named SRCaps. It is based on the CapsNet architecture introduced in the work of LaLonde and Bagci. During training, the model receives a batch of images patches pairs, one with low resolution and the other with high resolution. The low resolution image is fed to the encoder, which is composed of a single convolutional layer. The output of the encoder is then fed to a sequence of capsule blocks, each having a residual connection with its input. The output of the last capsule block is then fed to another convolutional layer, which has a residual connection with the output of the first convolutional layer. Then the output of the last convolutional layer is fed to the UPNet, which is responsible for the upsampling of the image. The output of the UPNet is then compared to the high resolution image using a loss function. The loss function is then used to update the weights of the model. The main difference between the training and validation phases is that during validation, the model receives a single LR/HR image pair, instead of a batch of patches per step.
-->



---
hideInToc: true
---

# SRCaps

<figure
    class="absolute top-50 left-7 w-230"
    >
    <img src="/images/model/capsblock_diagram.png" />
    <figcaption class="text-center">Capsblock diagram</figcaption>
</figure>

<!--
This is the diagram of the CapsBlock, which is the main building block of our model. It is composed of a sequence of convolutional capsules, each having a residual connection with its input. The output of each capsule is concatenated, creating what is called a dense connection, and then fed to a convolutional layer. The output of this convolutional layer is the output of this block.
-->



---
hideInToc: true
---

# SRCaps

<figure
    class="absolute top-40 left-12 w-220"
    >
    <img src="/images/model/upnet_diagram.png" />
    <figcaption class="text-center">UPNet diagram</figcaption>
</figure>

<!--
This is the diagram of the UPNet, which is responsible for the upsampling of the image. It is composed of a sequence of convolutional layers, intertwined with layers of pixel shuffle, or subpixel convolutions. At the output of each pixel shuffle layer the image is upsampled by a factor of 2 (or 3). The output of the last pixel shuffle layer is the output of the UPNet. In our case, we only used the path above, since we focused on a 4x upsampling factor.
-->



---
---

# Experimental Setup

<v-clicks>

- Training
  - DIV2K training set
  - Losses: L1, SSIM, MS-SSIM, L1 after a few RDCBs, L1 + edge map, 3-PSNR, 3-SSIM, <u>adaptive loss</u>
  - Model configuration: refer to the paper
- Validation
  - DIV2K validation set, Set5, Set14, BSD100 (B100), Urban100
  - Metrics: PSNR, SSIM, MS-SSIM, FLIP

</v-clicks>

<!--
For training we used the training set of the DIV2K dataset, which is composed by a wide variety of image types. We investigated a miriad of loss functions combinations, including L1, SSIM, MS-SSIM, edge map, and a few others. For our final version we stick with the adaptive loss function. For more information about number of epochs, model params, and other details, please refer to the paper. For validation we used a collection of commonly used datasets, composed of the validation set of the DIV2K, as well as the Set5, Set14, B100, and Urban100 datasets. For metrics we used PSNR, SSIM, MS-SSIM, and FLIP. For more information about the metrics, please refer to the paper. A few questions might arise, besides why we used capsules. So let's answer a few of them.
-->



---
layout: figure-side
figureCaption: The general loss function (left) and its gradient (right) for different values of its shape parameter α
figureFootnoteNumber: 1
figureUrl: /images/model/adaptive_loss.png
preload: false
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
  <Footnote :number=1><a href="https://openaccess.thecvf.com/content_CVPR_2019/html/Barron_A_General_and_Adaptive_Robust_Loss_Function_CVPR_2019_paper.html">A General and Adaptive Robust Loss Function</a></Footnote>
</Footnotes>

<!--
Why did we stick with adaptive loss? Well, we tested a lot of different loss functions, and we found that the adaptive loss function was the one that gave us the best results. The adaptive loss function is a generalization of a lot of loss functions, and it is defined by a shape parameter alpha and a scale parameter c. When alpha is equal to 2, the adaptive loss function is equivalent to the L2 loss function. When alpha is equal to 1, the adaptive loss function is equivalent to the Charbonnier loss function, which itself is a generalization of the L1 and L2 loss functions, and so on. In our case, we started with alpha equal to 1, which is equivalent to the Charbonnier loss function, and let the network learn during training the best value of alpha and c.
-->



---
---

# Why not only use PSNR and SSIM?

<figure
    v-click
    class="absolute top-55 left-10 w-40 h-40"
    >
    <img src="/images/metrics/Einstein/Einstein_a.png" />
    <figcaption class="text-center">Reference</figcaption>
</figure>

<figure
    v-click
    class="absolute top-25 left-70 w-40 h-40"
    >
    <img src="/images/metrics/Einstein/Einstein_b.png" />
    <figcaption class="text-center">Contrast enhanced</figcaption>
</figure>

<figure
    v-after
    class="absolute top-25 left-130 w-40 h-40"
    >
    <img src="/images/metrics/Einstein/Einstein_c.png" />
    <figcaption class="text-center">Gaussian noise</figcaption>
</figure>

<figure
    v-after
    class="absolute top-25 left-190 w-40 h-40"
    >
    <img src="/images/metrics/Einstein/Einstein_d.png" />
    <figcaption class="text-center">Salt-pepper noise</figcaption>
</figure>

<figure
    v-after
    class="absolute top-80 left-70 w-40 h-40"
    >
    <img src="/images/metrics/Einstein/Einstein_e.png" />
    <figcaption class="text-center">Speckle noise</figcaption>
</figure>

<figure
    v-after
    class="absolute top-80 left-130 w-40 h-40"
    >
    <img src="/images/metrics/Einstein/Einstein_f.png" />
    <figcaption class="text-center">JPEG compressed</figcaption>
</figure>

<figure
    v-after
    class="absolute top-80 left-190 w-40 h-40"
    >
    <img src="/images/metrics/Einstein/Einstein_g.png" />
    <figcaption class="text-center">Blurred</figcaption>
</figure>

<Footnotes separator v-after>
  <Footnote>Adapted from <a href="https://www.spiedigitallibrary.org/journals/journal-of-electronic-imaging/volume-19/issue-1/011003/Content-weighted-video-quality-assessment-using-a-three-component-image/10.1117/1.3267087.short?SSO=1">Content-weighted video quality assessment using a three-component image model</a></Footnote>
</Footnotes>

<!--
Another question is, why not only use PSNR and SSIM? Well, PSNR and SSIM are good metrics, but they are not perfect. For example, let's take a look at this image. This is the reference image. Here we can see a lot of different variations of the reference image. One thing that they all have in common is that they have the same PSNR values calculated from the reference image, but clearly some are closer to the original image, or at least more recognizable, than others. For that reason, we decided to use a combination of metrics, including PSNR and SSIM, but also MS-SSIM and FLIP.
-->
