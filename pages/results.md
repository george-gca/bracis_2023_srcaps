---
---

# Model Comparison

|                            | **SRCaps**    | EDSR          | RCAN          | WDSR          | RDN           | SRCNN            |
| -------------------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ---------------- |
| Number of Parameters       | 15M           | 1.5M          | 12.6M         | 4.8M          | 22.3M         | 20.1K            |
| Number of Blocks           | 7             | 16            | 10 × 16       | 16            | 16            | 1 (not residual) |
| Number of Layers per Block | 4             | 2             | 3             | 3             | 8             | 3                |
| Dense Connections          | <mdi-check /> | <mdi-close /> | <mdi-close /> | <mdi-close /> | <mdi-check /> | <mdi-close />    |
| Uses mean RGB              | <mdi-close /> | <mdi-check /> | <mdi-close /> | <mdi-check /> | <mdi-close /> | <mdi-close />    |
| Sub-pixel Convolution      | <mdi-check /> | <mdi-check /> | <mdi-check /> | <mdi-check /> | <mdi-check /> | <mdi-close />    |
| Loss Function              | Adaptive      | L1            | L1            | L1            | L1            | L1               |

<style>
th:nth-child(2) {
    background-color: goldenrod;
    color: black;
}

td:nth-child(2) {
    background-color: goldenrod;
    color: black;
}
</style>

<!--
Here we can see a quick comparison of our model

Here we can see a quick comparison of our model and the other models we used as a basis. Even though our model have few layers, it has a considerable amount of parameters. This happens due to the vectorial nature of the capsules. Also, our model is the only one that uses a different loss function, which is the adaptive loss function, and only our solution and RDN use dense connections.
-->



---
---

# Results

<figure
    class="absolute top-30 left-7 w-230"
    v-click
    >
    <img src="images/results/result_set14_barbara.png" />
    <figcaption class="text-center">Model results for “barbara” image from Set14 dataset</figcaption>
</figure>

<!--
Here we can see a visual comparison of the models' results

stripes in the tablecloth

smooth edges

Here we can see a visual comparison of the models' results. Even the models with the best results failed to be able to recreate the crossed stripes in the tablecloth. This is due to the fact that the stripes are too thin, and the models tend to create smooth edges, which is a characteristic of the RCAN model.
-->



---
hideInToc: true
---

# Results

<figure
    class="absolute top-30 left-7 w-230"
    >
    <img src="images/results/result_div2k_0891.png" />
    <figcaption class="text-center">Model results for “0891” image from DIV2K dataset</figcaption>
</figure>

<!--
In this other comparison, we can see that even though some models have better metrics, they fail to recreate subtle details of the image. For instance, the stroke width in the symbol above the letters, and also that is uniting different letters.
-->



---
---

# Conclusion

<v-clicks>

- The purpose of this work was to
  - evaluate the use of the capsules in SISR
  - verify new forms of training and validating the results of NNs
- We proposed SRCaps, a new model for SISR based on the CapsNet architecture
  - despite the inferior result, a smaller number of layers obtained a relevant result
  - nonlinearity function applied may be a limiting factor
- Highlights
  - RCAN ability to create smooth edges
  - adaptive loss function
  - metrics not exactly reflect visual quality
- Future research
  - replace the composition of the UPNet
  - new non-linearity and routing functions for the capsules
  - novel capsule models

</v-clicks>

<!--
capsules might be a concept worth applying for SISR

So, to conclude, the purpose of this work was to evaluate the use of the capsules in SISR, and to verify new forms of training and validating the results of NNs. We proposed SRCaps, a new model for SISR based on the CapsNet architecture. Despite the inferior result when compared to a few models, a smaller number of layers obtained a relevant result, which indicate that capsules might be a concept worth applying for SISR. We believe that the nonlinearity function applied may be a limiting factor, since it was designed with classification/segmentation in mind. We also highlight the RCAN ability to create smooth edges, the adaptive loss function, and that metrics not exactly reflect visual quality. For future research, we suggest to replace the composition of the UPNet, new non-linearity and routing functions for the capsules, and novel capsule models.
-->
