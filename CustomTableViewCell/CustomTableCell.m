//
//  CustomTableCell.m
//  CustomTableViewCell
//
//  Created by ToanDK on 7/5/13.
//  Copyright (c) 2013 ToanDK. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell

+(CustomTableCell *)createNewCell {
    UIViewController *tempVC = [[UIViewController alloc] initWithNibName:@"CustomTableCell" bundle:nil];
    return (CustomTableCell *)tempVC.view;
}

@end
