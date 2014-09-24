//
//  iHWAddMqmViewController.m
//  iHelloWorld
//
//  Created by Lorentz on 31/08/2014.
//  Copyright (c) 2014 lorentz. All rights reserved.
//

#import "iHWAddMqmViewController.h"


@interface iHWAddMqmViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation iHWAddMqmViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   if(sender!=self.doneButton) return;
   if(self.textField.text.length > 0)
   {
      self.addedMqm = [[iHWMqm alloc]init];
      self.addedMqm.mqmName = self.textField.text;
      self.addedMqm.present = NO;
   }
   
}

@end
