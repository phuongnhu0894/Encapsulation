//
//  OptionView.h
//  EncapsulationTest
//
//  Created by Phuong on 11/30/15.
//  Copyright © 2015 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OptionView : UIView <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;

- (IBAction)doneSelectingOptions:(id)sender;

@end
