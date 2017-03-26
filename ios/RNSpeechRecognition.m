
#import "RNSpeechRecognition.h"
#import <Speech/Speech.h>

@implementation RNSpeechRecognition

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

// Returns false if synthesizer is paued
RCT_EXPORT_METHOD(isAvailable:(RCTResponseSenderBlock)callback)
{
    //    if (self.synthesizer.paused) {
    //        callback(@[@true]);
    //    } else {
    //        callback(@[@false]);
    //    }
}
RCT_EXPORT_METHOD(start:(RCTResponseSenderBlock)locale)
{
    //Starts listening for speech for a specific locale. Returns null if no error occurs.
    //    NSArray *locales = [44 valueForKey:@"language"];
    
}
RCT_EXPORT_METHOD(getTranscript:(NSString *)url locale:(NSString *)locale callback:(RCTResponseSenderBlock)callback)
{
    [SFSpeechRecognizer requestAuthorization:^(SFSpeechRecognizerAuthorizationStatus status) {
        if (status == SFSpeechRecognizerAuthorizationStatusAuthorized){
            NSLocale *local =[[NSLocale alloc] initWithLocaleIdentifier:locale];
            SFSpeechRecognizer *sf =[[SFSpeechRecognizer alloc] initWithLocale:local];
            SFSpeechURLRecognitionRequest *speechRequest = [[SFSpeechURLRecognitionRequest alloc] initWithURL:[NSURL URLWithString:url]];
            [sf recognitionTaskWithRequest:speechRequest resultHandler:^(SFSpeechRecognitionResult * _Nullable result, NSError * _Nullable error) {
                NSLog(@"%@", result);
            }];
            
        }
    }];
}

@end
