//
// IQActionSheetPickerView.h
// Created by Mohd Iftekhar Qurashi on 11/5/13.
// Copyright (c) 2013 Iftekhar. All rights reserved.

#import <Foundation/Foundation.h>

typedef enum IQActionSheetPickerStyle
{
    IQActionSheetPickerStyleTextPicker,
    IQActionSheetPickerStyleDatePicker
}IQActionSheetPickerStyle;

@class IQActionSheetPicker;

@protocol IQActionSheetPickerDelegate <UIActionSheetDelegate>

-(void)actionSheetPickerView:(IQActionSheetPicker *)pickerView didSelectTitles:(NSArray*)titles didSelectIndexes:(NSArray *)indexes;

@end

@interface IQActionSheetPicker : UIActionSheet <UIPickerViewDataSource, UIPickerViewDelegate>
{
@private
    UIPickerView    *_pickerView;
    UIDatePicker    *_datePicker;
    UIToolbar       *_actionToolbar;
}

@property(nonatomic,assign) id<IQActionSheetPickerDelegate> delegate; // weak reference
@property(nonatomic, assign) IQActionSheetPickerStyle actionSheetPickerStyle;   //Default is IQActionSheetPickerStyleTextPicker;

// public properties

@property(nonatomic, strong) UIColor *backgroundColor;

/*for IQActionSheetPickerStyleTextPicker*/
@property(nonatomic,assign) BOOL isRangePickerView;
@property(nonatomic, strong) NSArray *titlesForComponenets;
@property(nonatomic, strong) NSArray *widthsForComponents;
@property(nonatomic, strong) NSArray *defaultValues;

/*for IQActionSheetPickerStyleDatePicker*/
@property(nonatomic, assign) NSDateFormatterStyle dateStyle;    //returning date string style.
@property(nonatomic, assign) NSDate *date; //get/set date.

@end