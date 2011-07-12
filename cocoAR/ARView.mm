//
//  ARView.m
//  ARcocos
//
//  Created by Javier de la Peña Ojea on 29/06/11.
//  Copyright 2011 Artifact. All rights reserved.
//

#import "ARView.h"
#import "EAGLView.h"

@implementation ARView

+ (Class) layerClass
{
  return [CAEAGLLayer class];
}

- (id)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    //clear the background color of the overlay
    self.opaque = NO;
    self.backgroundColor = [UIColor clearColor];
    
    
    //load an image to show in the overlay
    EAGLView *__glView = [EAGLView viewWithFrame: [[UIScreen mainScreen] bounds]
                                     pixelFormat: kEAGLColorFormatRGBA8
                                     depthFormat: GL_DEPTH_COMPONENT16_OES
                              preserveBackbuffer: NO
                                      sharegroup: nil
                                   multiSampling: NO
                                 numberOfSamples: 0 ];
    
    __glView.opaque = NO;
    __glView.alpha = 1.0;
    __glView.backgroundColor = [UIColor clearColor];
    
    [self addSubview:__glView];
    
    //with no functionality at the moment
//    UIButton *button = [UIButton
//                        buttonWithType:UIButtonTypeRoundedRect];
//    [button setTitle:@"Scan Now" forState:UIControlStateNormal];
//    button.frame = CGRectMake(0, 430, 320, 40);
//    [self addSubview:button];
  }
  return self;
}

@end