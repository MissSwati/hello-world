//
//  EditStaff.m
//
//  Created by MacBook Pro on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "EditStaff.h"

@interface EditStaff ()

@end

@implementation EditStaff

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

- (IBAction)updateStaff:(id)sender
{
    Database *d = [Database sharedDatabase];
    NSMutableArray * array = [d getAllStaff];
    
    for (Staff * t in array)
    {
        if ([t.uniqueId isEqualToString:self.Uid.text])
        {
            
             NSString * query = [NSString stringWithFormat:@"update stafftable set Name='%@', Email='%@',PhoneNo='%@' where Uid='%@';",self.EditedName.text,self.EditedEmail.text,self.EditedPhone.text,self.Uid.text];
            
            int success = [d executeQuery:query];
            NSLog(@"Success = %d",success);
            if (success==1)
            {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                                message:@"record successfuly Updated"
                                                               delegate:self
                                                      cancelButtonTitle:@"OK"
                                                      otherButtonTitles:nil];
                [alert show];
                //[alert release];
                
                
            }
            
            
            
        }
    }


}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"OK"])
    {
        //            [self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"] animated:YES];
        //
        ManageStaffViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"ManageStaffViewController"];
        
        [self.navigationController pushViewController:view animated:YES];
        
    }
}


@end
