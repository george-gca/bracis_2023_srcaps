# Welcome to [Slidev](https://github.com/slidevjs/slidev)!

To start the slide show:

- `npm install`
- `npm run dev`
- visit http://localhost:3030

Edit the [slides.md](./slides.md) to see the changes.

Learn more about Slidev on [documentations](https://sli.dev/).

# TODO:

- [x] introduce SISR
- [x] show that most SISR solutions use CNNs, list a few
- [x] highlight the drawbacks of traditional cnns
  - maybe also include convnext here?
- [x] introduce the idea of capsule networks
- [x] show that capsule networks are a good fit for classification and segmentation
- [x] show that capsule networks are also a good fit for SISR
  - show previous uses, how they basically don't change CapsNet that much
  - show lalonde's work and how we use it as a basis
- diagrams of our model
- experiments
  - datasets: DIV2K, Set5, Set14, BSD100, Urban100
  - losses:
    - L1, SSIM, MS-SSIM, L1 after a few RDCBs, L1 + edge map with sobel filter, 3-PSNR, 3-SSIM, adaptive loss function
  - metrics: PSNR, SSIM, MS-SSIM, FLIP
    - why PSNR and SSIM alone are not that good
- parameter search, ray tune
- results, table
- conclusion
  - capsule networks might be a good fit for SISR

# Study

- usage of transformers for SISR
- usage of capsule networks for SISR
- usage of capsule networks for other tasks
- ConvNext
- usage of ConvNext for SISR

# References

- https://medium.com/ai%C2%B3-theory-practice-business/understanding-hintons-capsule-networks-part-ii-how-capsules-work-153b6ade9f66#:~:text=%E2%80%9CInstead%20of%20aiming%20for%20viewpoint,computations%20on%20their%20inputs%20and
- https://medium.com/hackernoon/uncovering-the-intuition-behind-capsule-networks-and-inverse-graphics-part-i-7412d121798d