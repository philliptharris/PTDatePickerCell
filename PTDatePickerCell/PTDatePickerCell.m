//
//  PTDatePickerCell.m
//  PTDatePickerCell
//
//  Created by Phillip Harris on 5/1/14.
//  Copyright (c) 2014 Phillip Harris. All rights reserved.
//

#import "PTDatePickerCell.h"

NSString * const PTDatePickerCellReuseIdentifier = @"PTDatePickerCellReuseIdentifier";

@implementation PTDatePickerCell

//===============================================
#pragma mark -
#pragma mark Initialization
//===============================================

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        _datePicker = [[UIDatePicker alloc] initWithFrame:CGRectZero];
        [_datePicker sizeToFit];
        [_datePicker addTarget:self action:@selector(datePickerValueDidChange:) forControlEvents:UIControlEventValueChanged];
        
        _datePicker.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:_datePicker];
        
        NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(self.contentView, _datePicker);
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_datePicker]|" options:0 metrics:0 views:viewsDictionary]];
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_datePicker]|" options:0 metrics:0 views:viewsDictionary]];
    }
    return self;
}

//===============================================
#pragma mark -
#pragma mark Actions
//===============================================

- (IBAction)datePickerValueDidChange:(id)sender {
    
    
}

@end
