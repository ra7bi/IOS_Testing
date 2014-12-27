//
//  ViewController.m
//  GitHubTestApp
//
//  Created by fahad alrahbi on 27/12/14.
//  Copyright (c) 2014 fahad alrahbi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Find the Document Directory
    NSArray * Paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    // get the path form paths array
    NSString * path = [Paths firstObject];
    
    // Add File name to the path
    path =[path stringByAppendingString:@"Fahad_file.txt"];
    
    NSString * textToFile = @"This text will saved in Fahad_file.txt";
    NSError * error;
    
    BOOL correct =[textToFile writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error];
    
    if(correct){
        
        NSLog(@"Text Has Been Saved ");
    }
    
    
    
    
    NSString * restored =[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    
    NSLog(@"Text restored is : %@",restored);


    //NSLog(@"Path is %@", path);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
