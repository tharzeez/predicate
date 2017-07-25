//
//  main.m
//  ArrWithDic
//
//  Created by Tharzeez on 7/24/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       // NSLog(@"Hello, World!");
        NSMutableDictionary *dic1=[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Cricket",@"fav",@"Football",@"SecondFav", nil];
        NSMutableDictionary *dic2=[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Biriyani",@"fav",
                                   @"Noodels",@"SecondFav",nil];
        
        NSMutableDictionary *dic3=[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Green",@"fav",
                                   @"Black",@"SecondFav",nil];
        NSMutableDictionary *dic4=[NSMutableDictionary dictionaryWithObjectsAndKeys:@"Some",@"fav",
                                   @"Many",@"SecondFav",nil];
        
        
        NSMutableDictionary *multidic=[NSMutableDictionary dictionaryWithObjectsAndKeys:dic1,@"first dic",dic2,@"second dic", nil];
        
        NSMutableArray *array =[NSMutableArray arrayWithObjects:dic1,dic2,dic3,dic4, nil];
                NSPredicate *pred=[NSPredicate predicateWithFormat:@"%K ==%@",@"fav",@"Biriyani"];
        NSArray * foodfilter=[array filteredArrayUsingPredicate:pred];
        
        NSPredicate *predicate =[NSPredicate predicateWithFormat:@"SecondFav == %@",@"Black"];
        NSArray *colFilter=[array filteredArrayUsingPredicate:predicate ];
        
        for(NSString * items in foodfilter){
            NSLog(@"here its%@",items);
            
        }
        for(NSString * items in colFilter){
            NSLog(@"here its%@",items);
            
        }

        
        
    }
    return 0;
}
