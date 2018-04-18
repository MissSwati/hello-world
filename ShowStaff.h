//
//  ShowStaff.h
//
//  Created by Felix-its 001 on 17/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MultiColumnTableViewCell.h"
#import "Database.h"
#import "Staff.h"

@interface ShowStaff : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *array;
}

@property(strong,nonatomic)NSMutableArray *filteredCities;

@property BOOL isFiltered;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

@end
