//
//  AddNewStaffViewController.m
//
//  Created by MacBook Pro on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import "AddNewStaffViewController.h"

@interface AddNewStaffViewController ()

@end

@implementation AddNewStaffViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)AddStaff:(id)sender
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
    else if (self.PhoneTxt.text.length==0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error"
                                                        message:@"please enter Phone no"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        //[alert release];
        
    }
    
    
    
    Database * d = [Database sharedDatabase];
    
    NSMutableArray * array = [d getAllStaff];
    
    NSLog(@"%lu",(unsigned long)array.count);
    //for (Staff * stf in array)
   // {
        
//        if ([stf.emailId isEqualToString:self.EmailTxt.text])
//        {
//            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error" message:@"emailID already exist..!!!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
//            
//            [alert show];
//            
//        }
//        else
//        {
//            //int i=0;
        
            // NSString * newId = [NSString stringWithFormat:@"id-%d",i+1];
            
            NSString * query = [NSString stringWithFormat:@"Insert into stafftable values (\"%@\",\"%@\",\"%@\",\"%@\")",self.nameTxt.text,self.uidTxt.text,self.EmailTxt.text,self.PhoneTxt.text];
            
            int success = [d executeQuery:query];
            
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

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


@end
