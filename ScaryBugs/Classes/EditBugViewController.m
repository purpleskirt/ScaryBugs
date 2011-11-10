//
//  EditBugViewController.m
//  ScaryBugs
//
//  Created by LY on 11/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EditBugViewController.h"
#import "ScaryBugDoc.h"
#import "ScaryBugData.h"
#import "UIImageExtras.h"

@implementation EditBugViewController
@synthesize bugDoc = _bugDoc;
@synthesize titleField = _titleField;
@synthesize imageView = _imageView;
@synthesize rateView = _rateView;
@synthesize picker = _picker;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization.
 }
 return self;
 }
 */


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	_rateView.notSelectedImage = [UIImage imageNamed:@"leafgrey40x35.png"];
	_rateView.halfSelectedImage = [UIImage imageNamed:@"leafdark40x35.png"];
	_rateView.fullSelectedImage = [UIImage imageNamed:@"leafgreen40x35.png"];
	_rateView.editable = YES;
	_rateView.maxRating = 5;
	_rateView.delegate = self;
}



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    self.picker = nil;
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	self.titleField = nil;
	self.imageView = nil;
	self.rateView = nil;
}


- (void)dealloc {
    [super dealloc];
	[_bugDoc release];
	_bugDoc = nil;
	[_titleField release];
	_titleField = nil;
	[_imageView release];
	_imageView = nil;
	[_rateView release];
	_rateView = nil;
	[_picker release];
	_picker = nil;
}
- (void)viewWillAppear:(BOOL)animated {    
    _titleField.text = _bugDoc.data.title;
    _rateView.rating = _bugDoc.data.rating;    
    _imageView.image = _bugDoc.fullImage;
    [super viewWillAppear:animated];
}
- (IBAction)titleFieldValueChanged:(id)sender {
    _bugDoc.data.title = _titleField.text;
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark RateViewDelegate

- (void)rateView:(RateView *)rateView ratingDidChange:(float)rating {
    _bugDoc.data.rating = rating;
}

- (IBAction)addPictureTapped:(id)sender {
    if (_picker == nil) {   
        self.picker = [[[UIImagePickerController alloc] init] autorelease];
        _picker.delegate = self;
        _picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        _picker.allowsEditing = NO;    
    } 
    [self.navigationController presentModalViewController:_picker animated:YES];    
}

#pragma mark UIImagePickerControllerDelegate

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {    
	
    [self dismissModalViewControllerAnimated:YES];
	
    UIImage *fullImage = (UIImage *) [info objectForKey:UIImagePickerControllerOriginalImage]; 
    UIImage *thumbImage = [fullImage imageByScalingAndCroppingForSize:CGSizeMake(44, 44)];
    _bugDoc.fullImage = fullImage;
    _bugDoc.thumbImage = thumbImage;
    _imageView.image = fullImage;
}
@end

