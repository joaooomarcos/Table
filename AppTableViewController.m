//
//  AppTableViewController.m
//  Table
//
//  Created by João Marcos on 25/02/15.
//  Copyright (c) 2015 João Marcos. All rights reserved.
//

#import "AppTableViewController.h"
#import "AppTableViewCell.h"
#import "AppDetalhesViewController.h"

@interface AppTableViewController ()

@end

@implementation AppTableViewController

NSMutableArray *nome;
NSMutableArray *imagem;
NSMutableArray *categoria;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    nome = [[NSMutableArray alloc] initWithObjects:@"Castelo",@"Corrida", @"Email", @"Futebol", @"Musica", @"Letroca", @"Bem Estar", @"Mensagem", @"Calculadora", @"Video", nil];
    imagem = [[NSMutableArray alloc] initWithObjects:@"castelo.png",@"corrida.png", @"email.png", @"fifa.png", @"itunes.png", @"letroca.png", @"saude.png", @"whats.png", @"wolfran.png", @"youtube.png", nil];
    categoria = [[NSMutableArray alloc] initWithObjects:@"Educativo",@"Jogos", @"Comunicação", @"Jogos", @"Entreternimento", @"Educativo", @"Saude", @"Comunicação", @"Educativo", @"Entreternimento", nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return nome.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AppTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AppDetalhes" forIndexPath:indexPath];
    long row = [indexPath row];
    
    cell.imagem.image = [UIImage imageNamed:[imagem objectAtIndex:row]];
    cell.nome.text = [nome objectAtIndex:row];
    cell.categoria.text = [categoria objectAtIndex:row];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"MostrarDetalhes"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        AppDetalhesViewController *appView = segue.destinationViewController;
        
        long row = [indexPath row];
        NSArray *aux = [NSArray arrayWithObjects:[nome objectAtIndex:row], [categoria objectAtIndex:row], [imagem objectAtIndex:row], nil];
        appView.dados = aux;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
