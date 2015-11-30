//
//  ViewController.m
//  EncapsulationTest
//
//  Created by Phuong on 11/30/15.
//  Copyright © 2015 Appcoda. All rights reserved.
//

#import "ViewController.h"
#import "OptionView.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property (strong, nonatomic) UIView *optionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.optionView = [[[NSBundle mainBundle] loadNibNamed:@"OptionView"
                                                            owner:self
                                                          options:nil] objectAtIndex:0];
    self.optionView.alpha = 0;
    self.optionView.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64);
    [self.view addSubview:self.optionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDatasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"customCell"];
    UILabel *label = (UILabel *)[cell viewWithTag:100];
    [label setText:[NSString stringWithFormat:@"Row %li", (long)indexPath.row]];
    
    return cell;
}

- (IBAction)showOptions:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        self.optionView.alpha = 1;
    }];
}
@end
