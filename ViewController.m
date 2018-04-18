//
//  ViewController.m
//
//  Created by Felix ITs 005 on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor grayColor];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ManageStaff:(id)sender
{
    ManageStaffViewController * staff = [self.storyboard instantiateViewControllerWithIdentifier:@"ManageStaffViewController"];
    
    [self.navigationController pushViewController:staff animated:YES];
}

- (IBAction)ManageContractor:(id)sender
{
    ManageContractorViewController * Contractor = [self.storyboard instantiateViewControllerWithIdentifier:@"ManageContractorViewController"];
    
    [self.navigationController pushViewController:Contractor animated:YES];

}
@end
