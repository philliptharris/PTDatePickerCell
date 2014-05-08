//
//  MyTableViewController.m
//  PTDatePickerCell
//
//  Created by Phillip Harris on 5/1/14.
//  Copyright (c) 2014 Phillip Harris. All rights reserved.
//

#import "MyTableViewController.h"

#import "PTDatePickerCell.h"

@interface MyTableViewController () <PTDatePickerCellDelegate>

@end

@implementation MyTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[PTDatePickerCell class] forCellReuseIdentifier:PTDatePickerCellReuseIdentifier];
}

//===============================================
#pragma mark -
#pragma mark UITableView
//===============================================

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PTDatePickerCell *cell = [tableView dequeueReusableCellWithIdentifier:PTDatePickerCellReuseIdentifier forIndexPath:indexPath];
    cell.delegate = self;
    cell.userDefaultsDateKey = @"MyDateKey";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 163.0;
}

//===============================================
#pragma mark -
#pragma mark PTDatePickerCellDelegate
//===============================================

- (void)datePickerCellValueDidChange:(PTDatePickerCell *)cell {
    NSLog(@"datePickerCellValueDidChange");
}

@end
