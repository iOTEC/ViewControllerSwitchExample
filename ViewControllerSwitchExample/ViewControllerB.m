//
//  ViewControllerB.m
//  ViewControllerSwitchExample
//
//  Created by CHYAU FUH CHANG on 2016/1/21.
//  Copyright © 2016年 iOTEC. All rights reserved.
//

#import "ViewControllerB.h"

@interface ViewControllerB ()

@end

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"prepareForSegue, destination=%@",[segue.destinationViewController class]);
}

@end
