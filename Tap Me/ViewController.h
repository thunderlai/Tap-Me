//
//  ViewController.h
//  Tap Me
//
//  Created by Clarence Lai on 10/11/13.
//  Copyright (c) 2013 Clarence Lai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    // Add the next three lines
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
    
    // Add these AVAudioPlayer objects!
    AVAudioPlayer *buttonBeep;
    AVAudioPlayer *secondBeep;
    AVAudioPlayer *backgroundMusic;    
}

- (IBAction)buttonPressed;

@end
