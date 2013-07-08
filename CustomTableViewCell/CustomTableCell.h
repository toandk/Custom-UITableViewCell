//
//  CustomTableCell.h
//  CustomTableViewCell
//
//  Created by ToanDK on 7/5/13.
//  Copyright (c) 2013 ToanDK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell {
    
}
@property (nonatomic, unsafe_unretained) IBOutlet UILabel *nameLabel;
@property (nonatomic, unsafe_unretained) IBOutlet UISwitch *switcher;
@property (nonatomic, unsafe_unretained) IBOutlet UIButton *aButton;

+(CustomTableCell *)createNewCell;

@end
