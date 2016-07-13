//
//  DetailViewController.h
//  LegacyProject
//
//  Created by Jim Knesel on 7/13/16.
//  Copyright © 2016 Jim Knesel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

