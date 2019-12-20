// Copyright 2017 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import Gnostic
import SwiftProtobuf

// "indicating the point in space at which a journey, motion, or action starts"
func from<T: SwiftProtobuf.Message>(f: (inout T) -> Void) -> T {
  var y = T()
  f(&y)
  return y
}

func StringQueryParameter(
  _ name: String,
  _ description: String,
  required: Bool
) -> Openapi_V3_ParameterOrReference {
  return from {
    $0.parameter = from {
      $0.name = name
      $0.description_p = description
      $0.in = "query"
      $0.required = required
      $0.schema = from {
        $0.schema.type = "string"
      }
    }
  }
}

func ObjectResponse(_ component: String) -> Openapi_V3_NamedResponseOrReference {
  return from {
    $0.name = "200"
    $0.value.response.content = from {
      $0.additionalProperties.append(
        from {
          $0.name = "application/json"
          $0.value.schema.reference.ref = component
        }
      )
    }
  }
}

func main() throws {
  let document: Openapi_V3_Document = from {
    $0.openapi = "3.0"

    $0.info = from {
      $0.title = "Spotify"
      $0.version = "v1"
      $0.description_p = "The Spotify API"
      $0.contact.url = "https://developers.spotify.com"
    }

    $0.paths.path.append(
      from {
        $0.name = "/albums"
        $0.value.get = from {
          $0.summary = "get album"
          $0.tags = ["albums", "catalog"]
          $0.operationID = "GetAlbum"
          $0.parameters = [
            StringQueryParameter("ids", "A comma-separated list of IDs", required: true),
            StringQueryParameter(
              "market", "The market (an ISO 3166-1 alpha-2 country code)", required: false
            ),
          ]
          $0.responses = from {
            $0.responseOrReference.append(
              ObjectResponse("components/album")
            )
          }
        }
    })
    $0.components = from {
      $0.schemas.additionalProperties.append(
        from {
          $0.name = "album"
          $0.value.schema = from {
            $0.properties.additionalProperties.append(
              from {
                $0.name = "album_type"
                $0.value.schema = from {
                  $0.description_p =
                    "The type of the album: one of 'album', 'single', or 'compilation'."
                  $0.type = "string"
                }
            })
          }
        }
      )
    }
  }

  let serialized = try document.serializedData()
  let file = FileHandle(forWritingAtPath: "spotify.pb")!
  file.write(serialized)
}

try main()