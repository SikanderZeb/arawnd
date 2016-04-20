//
//  Comment.m
//  Arawnd
//
//  Created by Nada on 3/21/16.
//  Copyright © 2016 Boopin. All rights reserved.
//

#import "Comment.h"
#import "Header.h"

@interface Comment ()

@end

@implementation Comment{
    

    __weak IBOutlet UITextView *comment;


}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)submit:(id)sender {


NSDictionary *param = @{@"comment":comment.text,
                        
                        };

[[Utilities shared] serverRequest:param completionBlock:^(id responseObject) {
    //NSDictionary *response = responseObject;
} errorBlock:nil];


}
@end
