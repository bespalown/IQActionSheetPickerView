//
//  ViewController.m
//  ActionSheetPickerView
//  Copyright (c) 2013 Iftekhar. All rights reserved.

#import "ViewController.h"
#import "IQActionSheetPicker.h"


@interface ViewController ()<IQActionSheetPickerDelegate, UIActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}

- (void)actionSheetPickerView:(IQActionSheetPicker *)picker didSelectTitles:(NSArray*)titles didSelectIndexes:(NSArray *)indexes;
{
    switch (picker.tag)
    {
        case 1: [buttonSingle setTitle:[titles componentsJoinedByString:@" - "] forState:UIControlStateNormal]; break;
        case 2: [buttonDouble setTitle:[titles componentsJoinedByString:@" - "] forState:UIControlStateNormal]; break;
        case 3: [buttonTriple setTitle:[titles componentsJoinedByString:@" - "] forState:UIControlStateNormal]; break;
        case 4: [buttonRange setTitle:[titles componentsJoinedByString:@" - "] forState:UIControlStateNormal]; break;
        case 5: [buttonTripleSize setTitle:[titles componentsJoinedByString:@" - "] forState:UIControlStateNormal]; break;
        case 6: [buttonDate setTitle:[titles componentsJoinedByString:@" - "] forState:UIControlStateNormal]; break;
            
        default:
            break;
    }
    NSLog(@"didSelectIndexes %@",[indexes componentsJoinedByString:@" - "]);
}

- (IBAction)onePickerViewClicked:(UIButton *)sender {
     IQActionSheetPicker *picker = [[IQActionSheetPicker alloc] initWithTitle:@"Single Picker" delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:@"destruction" otherButtonTitles:@"other", nil];
    picker.delegate = self;
    [picker setTag:1];
    [picker setTitlesForComponenets:[NSArray arrayWithObjects:
                                     [NSArray arrayWithObjects:@"First", @"Second", @"Third", @"Four", @"Five", nil],
                                     nil]];
    [picker showInView:self.view];
}

- (IBAction)twoPickerViewClicked:(UIButton *)sender {
    IQActionSheetPicker *picker = [[IQActionSheetPicker alloc] initWithTitle:@"Double Picker" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil, nil];
    [picker setTag:2];
    [picker setTitlesForComponenets:[NSArray arrayWithObjects:
                                     [NSArray arrayWithObjects:@"First 1", @"Second 1", @"Third 1", @"Four 1", @"Five 1", nil],
                                     [NSArray arrayWithObjects:@"First 2", @"Second 2", @"Third 2", @"Four 2", @"Five 2", nil],
                                     nil]];
    [picker setDefaultValues:[NSArray arrayWithObjects:@"1", @"3", nil]];
    [picker setBackgroundColor:[UIColor colorWithRed:226.0/255.0 green:215.0/255.0 blue:208.0/255.0 alpha:1]];
    [picker showInView:self.view];
}

- (IBAction)threePickerViewClicked:(UIButton *)sender {
    IQActionSheetPicker *picker = [[IQActionSheetPicker alloc] initWithTitle:@"Three Picker" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil, nil];
    [picker setTag:3];
    [picker setTitlesForComponenets:[NSArray arrayWithObjects:
                                     [NSArray arrayWithObjects:@"First 1", @"Second 1", @"Third 1", @"Four 1", @"Five 1", nil],
                                     [NSArray arrayWithObjects:@"First 2", @"Second 2", @"Third 2", @"Four 2", @"Five 2", nil],
                                     [NSArray arrayWithObjects:@"First 3", @"Second 3", @"Third 3", @"Four 3", @"Five 3", nil],
                                     nil]];
    [picker showInView:self.view];
}

- (IBAction)rangeSelectClicked:(UIButton *)sender {
    IQActionSheetPicker *picker = [[IQActionSheetPicker alloc] initWithTitle:@"Range Selector" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil, nil];
    [picker setTag:4];
    [picker setIsRangePickerView:YES];
    [picker setTitlesForComponenets:[NSArray arrayWithObjects:
                                     [NSArray arrayWithObjects:@"100", @"200", @"300", @"400", @"500",@"600", @"700", @"800", @"900", nil],
                                     [NSArray arrayWithObjects:@"To", nil],
                                     [NSArray arrayWithObjects:@"200", @"300", @"400", @"500",@"600", @"700", @"800", @"900",@"1000", nil],
                                     nil]];
    [picker showInView:self.view];
}

- (IBAction)threePickerViewWithWidths:(UIButton *)sender {
    IQActionSheetPicker *picker = [[IQActionSheetPicker alloc] initWithTitle:@"Range Selector With Size" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil, nil];
    [picker setTag:5];
    [picker setIsRangePickerView:YES];
    [picker setTitlesForComponenets:[NSArray arrayWithObjects:
                                     [NSArray arrayWithObjects:@"100", @"200", @"300", @"400", @"500",@"600", @"700", @"800", @"900", nil],
                                     [NSArray arrayWithObjects:@"To", nil],
                                     [NSArray arrayWithObjects:@"200", @"300", @"400", @"500",@"600", @"700", @"800", @"900",@"1000", nil],
                                     nil]];
    [picker setWidthsForComponents:[NSArray arrayWithObjects:
                                    [NSNumber numberWithFloat:120],
                                    [NSNumber numberWithFloat:60],
                                    [NSNumber numberWithFloat:120],
                                    nil]];
    [picker setDefaultValues:[NSArray arrayWithObjects:@"4", @"0", @"5", nil]];
    [picker showInView:self.view];
}

- (IBAction)datePickerViewClicked:(UIButton *)sender {
    IQActionSheetPicker *picker = [[IQActionSheetPicker alloc] initWithTitle:@"Date Picker" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil, nil];
    [picker setTag:6];
    [picker setActionSheetPickerStyle:IQActionSheetPickerStyleDatePicker];
    [picker setDate:[NSDate new]];
    [picker showInView:self.view];
}
@end
