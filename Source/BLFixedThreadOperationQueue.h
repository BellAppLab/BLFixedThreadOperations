#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BLFixedThreadOperationQueue : NSObject

#pragma mark Managing operations in the queue
/**
 Adds an operation to the queue using a block.
 
 @param block   the block to be executed by the queue
 */
- (void)addOperationWithBlock:(void(^)())block;

/**
 Adds several operations to the queue.
 
 @param operations  An array of `NSOperation` objects to be executed by the queue
 */
- (void)addOperations:(NSArray<NSOperation *> *) operations;

/**
 The operations currently on queue.
 */
@property (nonatomic, readonly) NSArray<NSOperation *> * _Nullable operations;

/**
 Cancels all operations currently on queue.
 
 @see  `NSOperationQueue`
 */
- (void)cancelAllOperations;

#pragma mark Properties
/**
 The queue's name.
 
 @see   `NSOperationQueue`
 */
@property (nonatomic, copy) NSString * _Nullable name;

#pragma mark Configuring the thread
/**
 The `NSThread` object behind the operation queue.
 */
@property (nonatomic, strong, readonly) NSThread *underlyingThread;

@end

NS_ASSUME_NONNULL_END
