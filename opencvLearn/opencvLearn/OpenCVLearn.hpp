//
//  OpenCVLearn.hpp
//  opencvLearn
//
//  Created by 陈家奇 on 2017/6/13.
//  Copyright © 2017年 陈家奇. All rights reserved.
//

#ifndef OpenCVLearn_hpp
#define OpenCVLearn_hpp

#ifdef check
    #define OS_X_STUPID_CHECK_MACRO check
    #undef check
#endif

#include <stdio.h>

#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>

#ifdef OS_X_STUPID_CHECK_MACRO
    #define check OS_X_STUPID_CHECK_MACRO
    #undef OS_X_STUPID_CHECK_MACRO
#endif

using namespace cv;

class ImageProcessUtils {
    public:
    Mat imageToGray(String inputImageFullPath);
//    Mat imageErode(String inputImageFullPath);
    Mat imageBlur(String inputImageFullPath);
//    Mat imageBorderDetectWithCanny(String inputImageFullPath);

};


#endif /* OpenCVLearn_hpp */
