//
//  PTDatePickerCell.h
//  PTDatePickerCell
//
//  Created by Phillip Harris on 5/1/14.
//  Copyright (c) 2014 Phillip Harris. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PTDatePickerCellDelegate;

extern NSString * const PTDatePickerCellReuseIdentifier;

@interface PTDatePickerCell : UITableViewCell

@property (nonatomic, weak) id <PTDatePickerCellDelegate> delegate;

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

/// Optional. Use this if you want the cell to bind the date to a key in NSUserDefaults representing an NSDate object.
@property (nonatomic, strong) NSString *userDefaultsDateKey;

- (IBAction)datePickerValueDidChange:(id)sender;

+ (CGFloat)preferredHeight;

@end


@protocol PTDatePickerCellDelegate <NSObject>

@optional
- (void)datePickerCellValueDidChange:(PTDatePickerCell *)cell;

@end
