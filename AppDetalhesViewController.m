//
//  AppDetalhesViewController.m
//  Table
//
//  Created by João Marcos on 25/02/15.
//  Copyright (c) 2015 João Marcos. All rights reserved.
//

#import "AppDetalhesViewController.h"

@interface AppDetalhesViewController ()

@end

@implementation AppDetalhesViewController
@synthesize dados;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nome.text = [dados objectAtIndex:0];
    _categoria.text = [dados objectAtIndex:1];
    _image.image = [UIImage imageNamed:[dados objectAtIndex:2]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)voltar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
