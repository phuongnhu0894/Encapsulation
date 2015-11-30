//
//  OptionView.m
//  EncapsulationTest
//
//  Created by Phuong on 11/30/15.
//  Copyright © 2015 Appcoda. All rights reserved.
//

#import "OptionView.h"

@implementation OptionView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
}

#pragma mark - UITableViewDatasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"OptionCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Option %li", indexPath.row];
    return cell;
}

- (IBAction)doneSelectingOptions:(id)sender
{
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha = 0;
    }];
}

@end
