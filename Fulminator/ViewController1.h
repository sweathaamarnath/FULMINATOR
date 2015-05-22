//
//  ViewController1.h
//  Fulminator
//
//  Created by Target on 22/05/15.
//  Copyright (c) 2015 Sweatha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController1 : UIViewController<UIAlertViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *hit;
@property (strong, nonatomic) IBOutlet UILabel *timelabel;
- (IBAction)press:(id)sender;

@end
