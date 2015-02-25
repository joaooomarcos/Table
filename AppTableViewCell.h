//
//  AppTableViewCell.h
//  Table
//
//  Created by João Marcos on 25/02/15.
//  Copyright (c) 2015 João Marcos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imagem;
@property (weak, nonatomic) IBOutlet UILabel *nome;
@property (weak, nonatomic) IBOutlet UILabel *descricao;

@end
