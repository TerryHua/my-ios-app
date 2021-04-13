//
//  SceneDelegate.m
//  my-ios-app
//
//  Created by mac on 2021/4/13.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    UIViewController *controller1 = [[UIViewController alloc] init];
    controller1.view.backgroundColor = [UIColor grayColor];
    controller1.tabBarItem.title = @"首页";
    controller1.tabBarItem.image = [UIImage imageNamed:@"tabbar_home_normal"];
    controller1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_home_selected"];
    

    
    UIViewController *controller2 = [[UIViewController alloc] init];
    controller2.view.backgroundColor = [UIColor yellowColor];
    controller2.tabBarItem.title = @"订单";
    controller2.tabBarItem.image = [UIImage imageNamed:@"tabbar_order_normal"];
    controller2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_order_selected"];

    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor redColor];
    controller3.tabBarItem.title = @"下单";
    controller3.tabBarItem.image = [UIImage imageNamed:@"tabbar_publish"];

    UIViewController *controller4 = [[UIViewController alloc] init];
    controller4.view.backgroundColor = [UIColor blueColor];
    controller4.tabBarItem.title = @"我的";
    controller4.tabBarItem.image = [UIImage imageNamed:@"tabbar_mine_normal"];
    controller4.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_mine_selected"];

    [tabbarController setViewControllers:@[controller1, controller2, controller3, controller4]];
    
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    [self.window setWindowScene:windowScene];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    self.window.rootViewController = tabbarController;
              
    [self.window makeKeyAndVisible];

}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
