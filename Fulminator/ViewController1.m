//
//  ViewController1.m
//  Fulminator
//
//  Created by Target on 22/05/15.
//  Copyright (c) 2015 Sweatha. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

{
    int hits;
    int time;
    
    NSTimer *timer;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]]];
    
    self.timelabel.text=@"N/A";
    self.hit.text=@"N/A";
    [self setupGame];
}

-(void)setupGame {
    time=60;
    hits=0;
    
    
    _timelabel.text = [NSString stringWithFormat: @"%i",time];
    _hit.text= [NSString stringWithFormat:@"%i",hits
                ];
    timer=[NSTimer scheduledTimerWithTimeInterval:1.0
                                           target:self
                                         selector:@selector(elapsedTime)
                                         userInfo:nil
                                          repeats:YES];
}
-(void)elapsedTime
{
    time--;
    _timelabel.text=[NSString stringWithFormat:@"%i",time];
    
    if(time<=0)
    {
        UIAlertView *alert=[[UIAlertView alloc]
                            initWithTitle
                            :@"Game over!"
                            message:[NSString stringWithFormat:@"Your score is %i",hits]
                            delegate:self
                            cancelButtonTitle:@"Cancel"
                            otherButtonTitles:@"OK",nil];
        [alert show];
        [timer invalidate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)press:(id)sender {
    UIImage *bomb = [UIImage imageNamed:@"bom"];
    UIImageView *bom =[[UIImageView alloc] initWithImage:bomb];
    [bom setFrame: CGRectMake(83,115,35,35)];
    [self.view addSubview:bom];
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationCurveEaseIn animations:^{
        [bom setFrame:CGRectMake(149,47,35,35)];
        
        
        
    }
                     completion:^(BOOL finished)
     {
         [bom setFrame:CGRectMake(134,40,60,55)];
         [bom setImage:[UIImage imageNamed:@"splash"]];
         
         
         
         hits++;
         _hit.text=[NSString stringWithFormat:@"%i",hits];
     }];
    
}


-(void )alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonindex {
    if(buttonindex==0)
    {
        [self setupGame];
    }
    
    else if(buttonindex==1)
    {
        if(hits>=250)
        {
            
            UIAlertView *alert=[[UIAlertView alloc]
                                initWithTitle
                                :@"Game over!"
                                message:[NSString stringWithFormat:@"You win"]
                                delegate:self
                                cancelButtonTitle:@"OK"
                                otherButtonTitles:nil];
            [alert show];
        }
        else{
            UIAlertView *alert=[[UIAlertView alloc]
                                initWithTitle
                                :@"Game over!"
                                message:[NSString stringWithFormat:@"You lose"]
                                delegate:self
                                cancelButtonTitle:@"OK"
                                otherButtonTitles:nil];
            [alert show];
        }
        
        
        
        
        
    }}
    
@end