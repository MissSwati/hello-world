//
//  AddNewContractor.m
//
//  Created by MacBook Pro on 16/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "AddNewContractor.h"

@interface AddNewContractor ()

@end

@implementation AddNewContractor

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

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"OK"])
    {
               ManageContractorViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"ManageContractorViewController"];
        
        [self.navigationController pushViewController:view animated:YES];
        
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
//}
- (IBAction)addContractor:(id)sender
{
    if (self.nameTxt.text.length==0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error"
                                                        message:@"please enter name"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        //[alert release];
        
    }
    
    else if (self.EmailTxt.text.length==0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error"
                                                        message:@"please enter emailId"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        //[alert release];
        
    }
    else if (self.UidTxt.text.length==0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error"
                                                        message:@"please enter Unique Id"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        //[alert release];
        
    }
    
    
    
    Database * d = [Database sharedDatabase];
    
    NSMutableArray * array = [d getAllContractor];
    
    NSLog(@"%lu",(unsigned long)array.count);

    
    NSString * query = [NSString stringWithFormat:@"Insert into contractortable values (\"%@\",\"%@\",\"%@\",\"%@\")",self.nameTxt.text,self.UidTxt.text,self.EmailTxt.text,self.phoneTxt.text];
    
    int success = [d executeQuery1:query];
    
    NSLog(@"Success = %d",success);
    
    if (success==1)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations"
                                                        message:@"record successfuly added"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        //[alert release];
        
        
    }
    
    
    
    
}
@end
