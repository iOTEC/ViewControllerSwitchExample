//
//  ViewControllerC.m
//  ViewControllerSwitchExample
//
//  Created by CHYAU FUH CHANG on 2016/1/21.
//  Copyright © 2016年 iOTEC. All rights reserved.
//

#import "ViewControllerC.h"
#import "ViewControllerB.h"
#import "ViewControllerD.h"
@interface ViewControllerC ()

@end

@implementation ViewControllerC

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
- (IBAction)backToAclicked:(id)sender {
    // Method 4
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)toRootClicked:(id)sender {
    // Method 4
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)toBClicked:(id)sender {
    // Method 7
    NSMutableArray *controllers = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    UIViewController *rootController = controllers[0];
    [controllers removeAllObjects];
    [controllers addObject:rootController];

    ViewControllerB *vcB = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewControllerBIdentifier"];
    [controllers addObject:vcB];
    
    [[self navigationController] setViewControllers:controllers animated:YES];
}
- (IBAction)toDClicked:(id)sender {
    // Method 7
    NSMutableArray *controllers = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    UIViewController *rootController = controllers[0];
    [controllers removeAllObjects];
    [controllers addObject:rootController];
    
    ViewControllerB *vcB = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewControllerBIdentifier"];
    [controllers addObject:vcB];
    ViewControllerB *vcD = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewControllerDIdentifier"];
    [controllers addObject:vcD];
    
    [[self navigationController] setViewControllers:controllers animated:YES];
}

@end
