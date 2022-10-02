#include <iostream>
#include <string>


%hook AVPlayer

- (void)setRate:(float)rate {
 %orig(rate * 30.0f);
}

- (float)rate{
 return %orig() * 0.5f;
}

%end