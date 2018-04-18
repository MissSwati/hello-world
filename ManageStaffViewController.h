//
//  ManageStaffViewController.h
//
//  Created by Felix ITs 005 on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewStaffViewController.h"
#import "EditStaff.h"
#import "MultiColumnTableViewCell.h"
#import "ShowStaff.h"
#import "Database.h"

//http://stackoverflow.com/questions/29153135/how-do-i-create-a-ui-tableview-with-multiple-columns-in-xcode


@interface ManageStaffViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate>

{
    
NSMutableArray *array;
}
- (IBAction)addNewStaff:(id)sender;

- (IBAction)EditStaff:(id)sender;

- (IBAction)ShowStaffTable:(id)sender;

@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;


@end
