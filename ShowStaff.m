//
//  ShowStaff.m
//
//  Created by Felix-its 001 on 17/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "ShowStaff.h"


@interface ShowStaff ()

@end

@implementation ShowStaff

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Database *d = [Database sharedDatabase];
    array = [d getAllStaff];
    
    self.tableView.separatorColor = [UIColor lightGrayColor];
    
    [self.view bringSubviewToFront:self.searchBar
     ];
    

}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_isFiltered==YES)
    {
        return _filteredCities.count;
    }
    else
    {
        return array.count;
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65;
}

- (MultiColumnTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MultiColumnTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Staff * s;
    
    if (_isFiltered==YES)
    {
      s = [_filteredCities objectAtIndex:indexPath.row];
    }
    else
    {
        s = [array objectAtIndex:indexPath.row];
    }
    
    cell.Name.text = s.name;
    cell.Uid.text = s.uniqueId;
    cell.Email.text = s.emailId;
    
    
    return cell;
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if (searchText.length==0)
    {
        _isFiltered=NO;
    }
    else
    {
        _isFiltered=YES;
        
        _filteredCities=[NSMutableArray new];
        
        for (Staff * s in array)
        {
            NSRange cityNameRange=[s.name rangeOfString:searchText options:NSCaseInsensitiveSearch];
            
            if (cityNameRange.location!=NSNotFound)
            {
                [_filteredCities addObject:s];
            }
        }
    }
    
    [self.tableView reloadData];
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [_searchBar resignFirstResponder];
}


@end
