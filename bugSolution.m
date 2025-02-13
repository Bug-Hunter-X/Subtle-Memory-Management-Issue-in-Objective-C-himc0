The solution involves using the `copy` attribute for the NSString property, which prevents double retain issues. Here's the corrected code:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, copy) NSString *myString;
@end

@implementation MyClass
- (void)dealloc {
    [myString release];
    [super dealloc];
}
@end

```

By using `copy`, when a new string is assigned, the old one is released automatically before the new string is copied.  This eliminates the extra retain count and prevents the memory leak.