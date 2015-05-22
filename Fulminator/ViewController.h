//
//  ViewController.h
//  Fulminator
//
//  Created by KARTHIK on 5/16/15.
//  Copyright (c) 2015 Sweatha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *hit;
@property (strong, nonatomic) IBOutlet UILabel *timelabel;

- (IBAction)press:(id)sender;


@end
