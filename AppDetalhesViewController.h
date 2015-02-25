//
//  AppDetalhesViewController.h
//  Table
//
//  Created by João Marcos on 25/02/15.
//  Copyright (c) 2015 João Marcos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDetalhesViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *nome;
@property (weak, nonatomic) IBOutlet UILabel *categoria;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@property NSArray *dados;

- (IBAction)voltar:(id)sender;

@end
