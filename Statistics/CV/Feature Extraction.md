## Algorithms for Feature Detection and Description in OpenCV

OpenCV provides a variety of algorithms for feature detection and description in computer vision. Here are some of the key ones:

### cv::AffineFeature
This class implements the ASIFT (Affine-SIFT[[SIFT]]) algorithm, which makes detectors and extractors affine invariant. This is useful when dealing with images that have undergone affine transformations, like rotation, scaling, or shearing.



### cv::AgastFeatureDetector
This class implements the AGAST (Adaptive and Generic Accelerated Segment Test) algorithm for feature detection. It is a fast and efficient method for detecting corners and other features in images.

### cv::AKAZE
This class implements the AKAZE (Accelerated-KAZE) algorithm, which is a variant of the KAZE algorithm that is faster and more efficient. It is a keypoint detector and descriptor extractor that can handle non-linear scale spaces.

### cv::BRISK
This class implements the BRISK (Binary Robust Invariant Scalable Keypoints) algorithm, which is a feature detector and descriptor extractor that is robust to rotation, scaling, and affine transformations.

### cv::FastFeatureDetector
This class implements the FAST (Features from Accelerated Segment Test) algorithm for feature detection. It is a fast and efficient method for detecting corners and other features in images.

### cv::Feature2D
This is an abstract base class for 2D image feature detectors and descriptor extractors. It provides a common interface for all the feature detection and description algorithms in OpenCV.

### cv::GFTTDetector
This class is a wrapping class for feature detection using the goodFeaturesToTrack function. It is a method for detecting corners and other features in images that have high gradient changes.

### cv::KAZE
This class implements the KAZE (Keypoint-Affine-Zernike-Extraction) algorithm, which is a keypoint detector and descriptor extractor that is invariant to affine transformations.

### cv::KeyPointsFilter
This class is used to filter a vector of keypoints based on certain criteria, such as size or response.

### cv::MSER
This class implements the MSER (Maximally Stable Extremal Regions) algorithm, which is a method for detecting regions in images that are stable under different scales.

### cv::ORB
This class implements the ORB (Oriented BRIEF) algorithm, which is a feature detector and descriptor extractor that is efficient and robust to rotation, scaling, and affine transformations.

### cv::SIFT
This class implements the SIFT (Scale-Invariant Feature Transform) algorithm, which is a keypoint detector and descriptor extractor that is invariant to scale, rotation, and affine transformations.

### cv::SimpleBlobDetector
This class implements a simple method for detecting blobs in images based on their size and contrast. It is useful for detecting small objects or features in images.

---
created: 2023-05-03T15:40:17 (UTC +08:00)
tags: []
source: https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html
author: 
---

# OpenCV: Feature Detection and Description

> ## Excerpt
> #include <opencv2/features2d.hpp>

---
<table><tbody><tr><td colspan="2"><h2><a name="nested-classes"></a>Classes</h2></td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/da/d0b/classcv_1_1AffineFeature.html">cv::AffineFeature</a></td></tr><tr><td>&nbsp;</td><td>Class for implementing the wrapper which makes detectors and extractors to be affine invariant, described as ASIFT in <a href="https://docs.opencv.org/5.x/d0/de3/citelist.html#CITEREF_YM11">[295]</a> . <a href="https://docs.opencv.org/5.x/da/d0b/classcv_1_1AffineFeature.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/d7/d19/classcv_1_1AgastFeatureDetector.html">cv::AgastFeatureDetector</a></td></tr><tr><td>&nbsp;</td><td>Wrapping class for feature detection using the AGAST method. : <a href="https://docs.opencv.org/5.x/d7/d19/classcv_1_1AgastFeatureDetector.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/d8/d30/classcv_1_1AKAZE.html">cv::AKAZE</a></td></tr><tr><td>&nbsp;</td><td>Class implementing the <a href="https://docs.opencv.org/5.x/d8/d30/classcv_1_1AKAZE.html" title="Class implementing the AKAZE keypoint detector and descriptor extractor, described in ...">AKAZE</a> keypoint detector and descriptor extractor, described in <a href="https://docs.opencv.org/5.x/d0/de3/citelist.html#CITEREF_ANB13">[10]</a>. <a href="https://docs.opencv.org/5.x/d8/d30/classcv_1_1AKAZE.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/de/dbf/classcv_1_1BRISK.html">cv::BRISK</a></td></tr><tr><td>&nbsp;</td><td>Class implementing the <a href="https://docs.opencv.org/5.x/de/dbf/classcv_1_1BRISK.html" title="Class implementing the BRISK keypoint detector and descriptor extractor, described in  ...">BRISK</a> keypoint detector and descriptor extractor, described in <a href="https://docs.opencv.org/5.x/d0/de3/citelist.html#CITEREF_LCS11">[145]</a> . <a href="https://docs.opencv.org/5.x/de/dbf/classcv_1_1BRISK.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/df/d74/classcv_1_1FastFeatureDetector.html">cv::FastFeatureDetector</a></td></tr><tr><td>&nbsp;</td><td>Wrapping class for feature detection using the FAST method. <a href="https://docs.opencv.org/5.x/df/d74/classcv_1_1FastFeatureDetector.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/d0/d13/classcv_1_1Feature2D.html">cv::Feature2D</a></td></tr><tr><td>&nbsp;</td><td>Abstract base class for 2D image feature detectors and descriptor extractors. <a href="https://docs.opencv.org/5.x/d0/d13/classcv_1_1Feature2D.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/df/d21/classcv_1_1GFTTDetector.html">cv::GFTTDetector</a></td></tr><tr><td>&nbsp;</td><td>Wrapping class for feature detection using the goodFeaturesToTrack function. : <a href="https://docs.opencv.org/5.x/df/d21/classcv_1_1GFTTDetector.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/d3/d61/classcv_1_1KAZE.html">cv::KAZE</a></td></tr><tr><td>&nbsp;</td><td>Class implementing the <a href="https://docs.opencv.org/5.x/d3/d61/classcv_1_1KAZE.html" title="Class implementing the KAZE keypoint detector and descriptor extractor, described in  ...">KAZE</a> keypoint detector and descriptor extractor, described in <a href="https://docs.opencv.org/5.x/d0/de3/citelist.html#CITEREF_ABD12">[9]</a> . <a href="https://docs.opencv.org/5.x/d3/d61/classcv_1_1KAZE.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/de/db2/classcv_1_1KeyPointsFilter.html">cv::KeyPointsFilter</a></td></tr><tr><td>&nbsp;</td><td>A class filters a vector of keypoints. <a href="https://docs.opencv.org/5.x/de/db2/classcv_1_1KeyPointsFilter.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/d3/d28/classcv_1_1MSER.html">cv::MSER</a></td></tr><tr><td>&nbsp;</td><td>Maximally stable extremal region extractor. <a href="https://docs.opencv.org/5.x/d3/d28/classcv_1_1MSER.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/db/d95/classcv_1_1ORB.html">cv::ORB</a></td></tr><tr><td>&nbsp;</td><td>Class implementing the <a href="https://docs.opencv.org/5.x/db/d95/classcv_1_1ORB.html" title="Class implementing the ORB (oriented BRIEF) keypoint detector and descriptor extractor. ">ORB</a> (<em>oriented BRIEF</em>) keypoint detector and descriptor extractor. <a href="https://docs.opencv.org/5.x/db/d95/classcv_1_1ORB.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/d7/d60/classcv_1_1SIFT.html">cv::SIFT</a></td></tr><tr><td>&nbsp;</td><td>Class for extracting keypoints and computing descriptors using the Scale Invariant Feature Transform (<a href="https://docs.opencv.org/5.x/d7/d60/classcv_1_1SIFT.html" title="Class for extracting keypoints and computing descriptors using the Scale Invariant Feature Transform ...">SIFT</a>) algorithm by D. Lowe <a href="https://docs.opencv.org/5.x/d0/de3/citelist.html#CITEREF_Lowe04">[160]</a> . <a href="https://docs.opencv.org/5.x/d7/d60/classcv_1_1SIFT.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>class &nbsp;</td><td><a href="https://docs.opencv.org/5.x/d0/d7a/classcv_1_1SimpleBlobDetector.html">cv::SimpleBlobDetector</a></td></tr><tr><td>&nbsp;</td><td>Class for extracting blobs from an image. : <a href="https://docs.opencv.org/5.x/d0/d7a/classcv_1_1SimpleBlobDetector.html#details">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr></tbody></table>

<table><tbody><tr><td colspan="2"><h2><a name="typedef-members"></a>Typedefs</h2></td></tr><tr><td>typedef <a href="https://docs.opencv.org/5.x/da/d0b/classcv_1_1AffineFeature.html">AffineFeature</a>&nbsp;</td><td><a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga4f0293a04ea11fcea03746edd6781232">cv::AffineDescriptorExtractor</a></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>typedef <a href="https://docs.opencv.org/5.x/da/d0b/classcv_1_1AffineFeature.html">AffineFeature</a>&nbsp;</td><td><a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga94d7dadbe8de971eeed19b8fd25e357e">cv::AffineFeatureDetector</a></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>typedef <a href="https://docs.opencv.org/5.x/d0/d13/classcv_1_1Feature2D.html">Feature2D</a>&nbsp;</td><td><a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#gadd5cf7c76865f14468cfdd9cc08eb990">cv::DescriptorExtractor</a></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>typedef <a href="https://docs.opencv.org/5.x/d0/d13/classcv_1_1Feature2D.html">Feature2D</a>&nbsp;</td><td><a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga15e1361bda978d83a2bea629b32dfd3c">cv::FeatureDetector</a></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>typedef <a href="https://docs.opencv.org/5.x/d7/d60/classcv_1_1SIFT.html">SIFT</a>&nbsp;</td><td><a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga89ce54823df44e7be4e43511c1d44553">cv::SiftDescriptorExtractor</a></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>typedef <a href="https://docs.opencv.org/5.x/d7/d60/classcv_1_1SIFT.html">SIFT</a>&nbsp;</td><td><a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#gab5eeb05ac493f07b9495f5571ca421c7">cv::SiftFeatureDetector</a></td></tr><tr><td colspan="2">&nbsp;</td></tr></tbody></table>

<table><tbody><tr><td colspan="2"><h2><a name="func-members"></a>Functions</h2></td></tr><tr><td>void&nbsp;</td><td><a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga7e1a0a6477c189a2bb9604a22de99887">cv::AGAST</a> (<a href="https://docs.opencv.org/5.x/dc/d84/group__core__basic.html#ga353a9de602fe76c709e12074a6f362ba">InputArray</a> image, std::vector&lt; <a href="https://docs.opencv.org/5.x/d2/d29/classcv_1_1KeyPoint.html">KeyPoint</a> &gt; &amp;keypoints, int <a href="https://docs.opencv.org/5.x/d7/d1b/group__imgproc__misc.html#gae8a4a146d1ca78c626a53577199e9c57">threshold</a>, bool nonmaxSuppression=true, <a href="https://docs.opencv.org/5.x/d7/d19/classcv_1_1AgastFeatureDetector.html#ae9a22560b2cc9c99b3a3de82ac4af7d3">AgastFeatureDetector::DetectorType</a> type=<a href="https://docs.opencv.org/5.x/d7/d19/classcv_1_1AgastFeatureDetector.html#ae9a22560b2cc9c99b3a3de82ac4af7d3a845a73eb152969fd46ef6b952856e82d">AgastFeatureDetector::OAST_9_16</a>)</td></tr><tr><td>&nbsp;</td><td>Detects corners using the AGAST algorithm. <a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga7e1a0a6477c189a2bb9604a22de99887">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr><tr><td>void&nbsp;</td><td><a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga0a862f6695325b87f522aa64074d5c68">cv::FAST</a> (<a href="https://docs.opencv.org/5.x/dc/d84/group__core__basic.html#ga353a9de602fe76c709e12074a6f362ba">InputArray</a> image, std::vector&lt; <a href="https://docs.opencv.org/5.x/d2/d29/classcv_1_1KeyPoint.html">KeyPoint</a> &gt; &amp;keypoints, int <a href="https://docs.opencv.org/5.x/d7/d1b/group__imgproc__misc.html#gae8a4a146d1ca78c626a53577199e9c57">threshold</a>, bool nonmaxSuppression=true, <a href="https://docs.opencv.org/5.x/df/d74/classcv_1_1FastFeatureDetector.html#a4654f6fb0aa4b8e9123b223bfa0e2a08">FastFeatureDetector::DetectorType</a> type=<a href="https://docs.opencv.org/5.x/df/d74/classcv_1_1FastFeatureDetector.html#a4654f6fb0aa4b8e9123b223bfa0e2a08a7a1af523673c330d43ec47081bcc55e3">FastFeatureDetector::TYPE_9_16</a>)</td></tr><tr><td>&nbsp;</td><td>Detects corners using the FAST algorithm. <a href="https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga0a862f6695325b87f522aa64074d5c68">More...</a><br></td></tr><tr><td colspan="2">&nbsp;</td></tr></tbody></table>

## [◆](https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga4f0293a04ea11fcea03746edd6781232) AffineDescriptorExtractor

## [◆](https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga94d7dadbe8de971eeed19b8fd25e357e) AffineFeatureDetector

## [◆](https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#gadd5cf7c76865f14468cfdd9cc08eb990) DescriptorExtractor

`#include <[opencv2/features2d.hpp](https://docs.opencv.org/5.x/d5/d0d/features2d_8hpp.html)>`

Extractors of keypoint descriptors in OpenCV have wrappers with a common interface that enables you to easily switch between different algorithms solving the same problem. This section is devoted to computing descriptors represented as vectors in a multidimensional space. All objects that implement the vector descriptor extractors inherit the DescriptorExtractor interface.

## [◆](https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga15e1361bda978d83a2bea629b32dfd3c) FeatureDetector

`#include <[opencv2/features2d.hpp](https://docs.opencv.org/5.x/d5/d0d/features2d_8hpp.html)>`

Feature detectors in OpenCV have wrappers with a common interface that enables you to easily switch between different algorithms solving the same problem. All objects that implement keypoint detectors inherit the FeatureDetector interface.

## [◆](https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga89ce54823df44e7be4e43511c1d44553) SiftDescriptorExtractor

## [◆](https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#gab5eeb05ac493f07b9495f5571ca421c7) SiftFeatureDetector

## [◆](https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga7e1a0a6477c189a2bb9604a22de99887) AGAST()

`#include <[opencv2/features2d.hpp](https://docs.opencv.org/5.x/d5/d0d/features2d_8hpp.html)>`

Detects corners using the AGAST algorithm.

Parameters

For non-Intel platforms, there is a tree optimised variant of AGAST with same numerical results. The 32-bit binary tree tables were generated automatically from original code using perl script. The perl script and examples of tree generation are placed in features2d/doc folder. Detects corners using the AGAST algorithm by [\[166\]](https://docs.opencv.org/5.x/d0/de3/citelist.html#CITEREF_mair2010_agast) .

## [◆](https://docs.opencv.org/5.x/d5/d51/group__features2d__main.html#ga0a862f6695325b87f522aa64074d5c68) FAST()
