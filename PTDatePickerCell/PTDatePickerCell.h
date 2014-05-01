//
//  PTDatePickerCell.h
//  PTDatePickerCell
//
//  Created by Phillip Harris on 5/1/14.
//  Copyright (c) 2014 Phillip Harris. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const PTDatePickerCellReuseIdentifier;

@interface PTDatePickerCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)datePickerValueDidChange:(id)sender;

@end
