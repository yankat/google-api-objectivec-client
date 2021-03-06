/* Copyright (c) 2011 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//
//  GTLOrkutActivity.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   Orkut API (orkut/v2)
// Description:
//   Lets you manage activities, comments and badges in Orkut. More stuff coming
//   in time.
// Documentation:
//   http://code.google.com/apis/orkut/v2/reference.html
// Classes:
//   GTLOrkutActivity (0 custom class methods, 10 custom properties)
//   GTLOrkutActivityObject (0 custom class methods, 4 custom properties)
//   GTLOrkutActivityObjectReplies (0 custom class methods, 3 custom properties)

#import "GTLOrkutActivity.h"

#import "GTLOrkutAcl.h"
#import "GTLOrkutActivityobjectsResource.h"
#import "GTLOrkutAuthorResource.h"
#import "GTLOrkutComment.h"
#import "GTLOrkutLinkResource.h"

// ----------------------------------------------------------------------------
//
//   GTLOrkutActivity
//

@implementation GTLOrkutActivity
@dynamic access, actor, identifier, kind, links, object, published, title,
         updated, verb;

+ (NSDictionary *)propertyToJSONKeyMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:@"id"
                                forKey:@"identifier"];
  return map;
}

+ (NSDictionary *)arrayPropertyToClassMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:[GTLOrkutLinkResource class]
                                forKey:@"links"];
  return map;
}

+ (void)load {
  [self registerObjectClassForKind:@"orkut#activity"];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLOrkutActivityObject
//

@implementation GTLOrkutActivityObject
@dynamic content, items, objectType, replies;

+ (NSDictionary *)arrayPropertyToClassMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:[GTLOrkutActivityobjectsResource class]
                                forKey:@"items"];
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLOrkutActivityObjectReplies
//

@implementation GTLOrkutActivityObjectReplies
@dynamic items, totalItems, url;

+ (NSDictionary *)arrayPropertyToClassMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:[GTLOrkutComment class]
                                forKey:@"items"];
  return map;
}

@end
