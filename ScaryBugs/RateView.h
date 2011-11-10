//
//  RateView.h
//  ScaryBugs
//
//  Created by LY on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RateView;

@protocol RateViewDelegate
- (void)rateView:(RateView *)rateView ratingDidChange:(float)rating;
@end

@interface RateView : UIView {
    UIImage *_notSelectedImage;
    UIImage *_halfSelectedImage;
    UIImage *_fullSelectedImage;
    float _rating;
    BOOL _editable;
    NSMutableArray *_imageViews;
    int _maxRating;
    int _midMargin;
    int _leftMargin;
    CGSize _minImageSize;
    id <RateViewDelegate> _delegate;
}

@property (retain) UIImage *notSelectedImage;
@property (retain) UIImage *halfSelectedImage;
@property (retain) UIImage *fullSelectedImage;
@property  float rating;
@property  BOOL editable;
@property  int maxRating;
@property (assign) id <RateViewDelegate> delegate;
@property  int leftMargin;

@end
