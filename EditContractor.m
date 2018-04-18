//
//  EditContractor.m
//
//  Created by MacBook Pro on 16/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "EditContractor.h"

@interface EditContractor ()

@end

@implementation EditContractor

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

- (IBAction)EditContractor:(id)sender
{
    Database * d = [Database sharedDatabase];
    
    NSMutableArray * array = [d getAllContractor];
    
    for (Contractor * t in array)
    {
        if ([t.uniqueId isEqualToString:self.Uid.text])
        {
            
            NSString * query = [NSString stringWithFormat:@"update contractortable set Name='%@', Email='%@',Address='%@' where Uid='%@';",self.EditedName.text,self.EditedEmail.text,self.EditedAddress.text,self.Uid.text];
            
            int success = [d executeQuery1:query];
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
        AddNewContractor *view = [self.storyboard instantiateViewControllerWithIdentifier:@"AddNewContractor"];
        
        [self.navigationController pushViewController:view animated:YES];
        
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
