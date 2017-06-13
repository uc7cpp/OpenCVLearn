//
//  OpenCVLearn.cpp
//  opencvLearn
//
//  Created by 陈家奇 on 2017/6/13.
//  Copyright © 2017年 陈家奇. All rights reserved.
//

#include "OpenCVLearn.hpp"

Mat ImageProcessUtils::imageToGray(String inputImageFullPath)
{
    cv::Mat gray;
    
    Mat input = imread(inputImageFullPath).clone();
    cvtColor(input, gray, cv::COLOR_BGR2GRAY);
    
    return gray;
}

Mat ImageProcessUtils::imageBlur(String inputImageFullPath)
{
    Mat result;
    
    Mat input = imread(inputImageFullPath).clone();
    blur(input, result, Size(7,7));
    
    return result;
}
