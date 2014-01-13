//
//  SimpleTableViewViewController.m
//  SimpleTableView
//
//  Created by Puthirith Nuon on 12/31/13.
//  Copyright (c) 2013 RUC. All rights reserved.
//

#import "SimpleTableViewViewController.h"

@interface SimpleTableViewViewController ()

@end

@implementation SimpleTableViewViewController
{
    NSArray *tableData;
}

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
    tableData = [NSArray arrayWithObjects:@"Car", @"Motor", @"Bicycle", @"Truck", @"Automobile", @"Plane", @"Train", @"Ship", @"Furry", @"Boat", @"Rocket", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"stock_xcode_icon.png"];

    return cell;
}

@end
