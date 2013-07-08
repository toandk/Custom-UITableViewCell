//
//  ViewController.m
//  CustomTableViewCell
//
//  Created by ToanDK on 7/5/13.
//  Copyright (c) 2013 ToanDK. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(int)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}

//-(UITableViewCell *)tableView:(UITableView *)tableView_ cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    static NSString *identifier = @"NormalCell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//    }
//    return cell;
//}

-(UITableViewCell *)tableView:(UITableView *)tableView_ cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"CustomIdentifier";
    
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        UIViewController *tempVC = [[UIViewController alloc] initWithNibName:@"CustomTableCell" bundle:nil];
        cell = (CustomTableCell *)tempVC.view;
    }
    
    // Set up cell
    cell.nameLabel.text = [NSString stringWithFormat:@"Cell %d", indexPath.row];
    cell.switcher.on = indexPath.row % 2;
    
    return cell;
}

@end
