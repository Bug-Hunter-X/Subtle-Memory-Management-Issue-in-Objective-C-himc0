# Objective-C Memory Management Bug

This repository demonstrates a common, yet subtle, memory management error in Objective-C. The bug involves incorrect usage of `retain`, `release`, and `autorelease` when working with NSString objects.  The `bug.m` file contains the buggy code, and `bugSolution.m` provides the corrected version.  Understanding this error is crucial for writing stable and leak-free Objective-C applications.

## Bug Description

The bug occurs due to improper handling of memory ownership of an NSString. When a new NSString is assigned to myString, an extra retain is added. The dealloc method only releases it once which leads to a memory leak. 

## Solution

The solution, provided in `bugSolution.m`, correctly manages memory ownership. This is achieved by using `copy` instead of `retain` in the property declaration.