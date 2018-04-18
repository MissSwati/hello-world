//
//  ManageStaffViewController.m
//
//  Created by Felix ITs 005 on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "ManageStaffViewController.h"

@interface ManageStaffViewController ()




@end

@implementation ManageStaffViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Database *d = [Database sharedDatabase];
    array = [d getAllStaff];
    
//    self.tableView.separatorColor = [UIColor lightGrayColor];
    
    
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




- (IBAction)addNewStaff:(id)sender
{
    AddNewStaffViewController * add = [self.storyboard instantiateViewControllerWithIdentifier:@"AddNewStaffViewController"];
    
    [self.navigationController pushViewController:add animated:YES];
}

- (IBAction)EditStaff:(id)sender
{
    EditStaff * edit = [self.storyboard instantiateViewControllerWithIdentifier:@"EditStaff"];
    
    [self.navigationController pushViewController:edit animated:YES];
}

- (IBAction)ShowStaffTable:(id)sender
{
    ShowStaff * show = [self.storyboard instantiateViewControllerWithIdentifier:@"ShowStaff"];
    
    [self.navigationController pushViewController:show animated:YES];
}
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    
    
}




@end
