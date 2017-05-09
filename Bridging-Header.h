#import <BuddyBuildSDK/BuddyBuildSDK.h>



#if DEVELOPMENT
#define SERVER_URL @"http://dev.server.com/api/"
#define API_TOKEN @"DI2023409jf90ew"

#define ENVI_TYPE @"Develop"

#else
#define SERVER_URL @"http://prod.server.com/api/"
#define API_TOKEN @"71a629j0f090232"

#define ENVI_TYPE "Release"

#endif
