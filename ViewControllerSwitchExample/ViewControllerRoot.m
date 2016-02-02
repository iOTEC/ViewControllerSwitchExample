//
//  ViewControllerRoot.m
//  ViewControllerSwitchExample
//
//  Created by CHYAU FUH CHANG on 2016/1/21.
//  Copyright © 2016年 iOTEC. All rights reserved.
//

#import "ViewControllerRoot.h"
#import "ViewControllerD.h"
@interface ViewControllerRoot ()

@end

@implementation ViewControllerRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)method2Clicked:(id)sender {
    NSLog(@"stack num=%d",(int) self.navigationController.viewControllers.count);
    NSLog(@"stack 0 ViewController Class name=%@", [self.navigationController.viewControllers[0] class]);
    [self performSegueWithIdentifier:@"RootToB" sender:nil];
}
- (IBAction)method3Clicked:(id)sender {
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ViewControllerD *controllerD = [storyboard instantiateViewControllerWithIdentifier:@"ViewControllerDIdentifier"];
    [self.navigationController pushViewController:controllerD animated:YES];
}

@end
