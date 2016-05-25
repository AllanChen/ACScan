//
//  ScanQRCodeViewController.h
//  MShow
//
//  Created by ChanAllan on 4/15/16.
//  Copyright © 2016 Allan.Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@protocol ScanQRCodeViewControllerDelegate;
@interface ScanQRCodeViewController : UIViewController<AVCaptureMetadataOutputObjectsDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@end

