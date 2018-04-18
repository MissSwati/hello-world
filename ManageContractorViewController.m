//
//  ManageContractorViewController.m
//
//  Created by Felix ITs 005 on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "ManageContractorViewController.h"

@interface ManageContractorViewController ()

@end

@implementation ManageContractorViewController

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

- (IBAction)AddContractor:(id)sender
{
    AddNewContractor *add = [self.storyboard instantiateViewControllerWithIdentifier:@"AddNewContractor"];
    
    [self.navigationController pushViewController:add animated:YES];
}

- (IBAction)EditContractor:(id)sender
{
    EditContractor *edit = [self.storyboard instantiateViewControllerWithIdentifier:@"EditContractor"];
    
    [self.navigationController pushViewController:edit animated:YES];
}

- (IBAction)ShowContractorTable:(id)sender {
}

@end
