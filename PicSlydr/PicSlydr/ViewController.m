//
//  ViewController.m
//  PicSlydr
//
//  Created by Ethan N. Ott on 10/8/15.
//  Copyright © 2015 Ethan N. Ott. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
@end

@implementation ViewController


int  state;
NSMutableArray *views;




- (IBAction)toggleButton:(id)sender {
    state--;
    if(state < 0) {
        state = 2;
    
    }
    self.imageView.image = [views objectAtIndex:state];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    state = 2;
    views = [[NSMutableArray alloc] init];
  
    [views addObject:  [UIImage imageNamed:@"CookieMonster"]];
    [views addObject:  [UIImage imageNamed:@"BigBird"]];
    [views addObject:  [UIImage imageNamed:@"CartMan"]];
    
    self.imageView.image = [views objectAtIndex:state];
    
    
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
