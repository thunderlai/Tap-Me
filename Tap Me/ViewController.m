//
//  ViewController.m
//  Tap Me
//
//  Created by Clarence Lai on 10/11/13.
//  Copyright (c) 2013 Clarence Lai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    count++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
}

- (void)setupGame {
    // 1
    seconds = 30;
    count = 0;
    
    // 2
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
    
    // 3
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)subtractTime {
    // 1
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %i",seconds];
    
    // 2
    if (seconds == 0) {
        [timer invalidate];
        
        // new code is here!
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!"
                                                        message:[NSString stringWithFormat:@"You scored %i points", count]
                                                       delegate:self
                                              cancelButtonTitle:@"Play Again"
                                              otherButtonTitles:nil];
        
        [alert show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}

@end