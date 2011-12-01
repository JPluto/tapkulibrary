//
//  AppDelegate_iPhone.m
//  Created by Devin Ross on 7/7/10.
//
/*
 
 tapku.com || https://github.com/devinross/tapkulibrary
 
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
 
 */

#import "AppDelegate_iPhone.h"
#import "RootViewController.h"

@implementation AppDelegate_iPhone
@synthesize root,navigationController;


#pragma mark -
#pragma mark Application lifecycle


- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	[super application:application didFinishLaunchingWithOptions:launchOptions];

    
	root = [[RootViewController alloc] initWithStyle:UITableViewStyleGrouped];
	navigationController = [[TKNavigationController alloc] initWithRootViewController:root];
	
	[self.window addSubview:navigationController.view];
	
	
	return YES;
}
- (void) applicationWillEnterForeground:(UIApplication *)application {
	[super applicationWillEnterForeground:application];
	
}
- (void) applicationDidStartup:(UIApplication *)application{
	// called by didFinishLaunching.. & willEnterForeground
	
}


- (void) applicationDidEnterBackground:(UIApplication *)application {
	
}
- (void) applicationWillTerminate:(UIApplication *)application {
	
}


- (void) applicationWillResignActive:(UIApplication *)application {
	
}
- (void) applicationDidBecomeActive:(UIApplication *)application {
	
}

#pragma mark -
#pragma mark Memory management

- (void) applicationDidReceiveMemoryWarning:(UIApplication *)application {
	[[TKImageCenter sharedImageCenter] clearImages];
}
- (void) dealloc {
	[root release];
	[navigationController release];
    [super dealloc];
}


@end
