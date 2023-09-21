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
    background-color: lightgrey;
}

td:nth-child(2) {
    background-color: lightgrey;
}
</style>

<!--
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
-->



---
---

# Conclusion

- The purpose of this work was to
  - evaluate the use of the capsules in SISR
  - verify new forms of training and validate the results of NNs
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
