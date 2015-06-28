# API Documentation for HckthnProjectZero5

Website: https://fierce-wave-2814.herokuapp.com/

## Table of Contents



## **Level Model**

#### Levels Index

List of all levels.

Path: 
`GET '/levels'`

**Parameters** 
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
400 | Error | Bad Request. Specified parameters do not match.

**Example Response**
```
[
  {
    "level": {
      "id": 1,
      "properties": {
        "name": "test4",
        "budget": "9999",
        "map": {
          "0": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "19"
          },
          "1": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "18"
          },
          "2": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "17"
          }
        }
      }
    }
  },
  {
    "level": {
      "id": 2,
      "properties": {
        "name": "stuffandthings",
        "budget": "900000",
        "map": {
          "0": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "19"
          },
          "1": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "18"
          },
          "2": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "17"
          },
          "3": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "16"
          },
          "4": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "15"
          },
          "5": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "14"
          },
          "6": {
            "length": "1",
            "width": "1",
            "x": "7",
            "y": "13"
          }
        }
      }
    }
  }
]
```

#### Show a Level

Shows a single level.

Path: 
`GET '/levels/:id'`

**Parameters** 
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
400 | Error | Bad Request. Specified parameters do not match.

**Example Response**
```
{
  "level": {
    "id": 1,
    "properties": {
      "name": "test4",
      "budget": "9999",
      "map": {
        "0": {
          "length": "1",
          "width": "1",
          "x": "7",
          "y": "19"
        },
        "1": {
          "length": "1",
          "width": "1",
          "x": "7",
          "y": "18"
        },
        "2": {
          "length": "1",
          "width": "1",
          "x": "7",
          "y": "17"
        }
      }
    }
  }
}
```

#### Create a Level

Shows a single level.

Path: 
`POST '/levels/new'`

**Parameters** 

Name | Type | Description
--- | ---
properties | text | **Required.** Includes all attributes of a the game peices (Name, Budget, Map).

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
422 | Error | Unprocessable Entry. Specified parameters are invalid.

**Example Response**
```
{
  "level": {
    "id": 1,
    "properties": {
      "name": "test4",
      "budget": "9999",
      "map": {
        "0": {
          "length": "1",
          "width": "1",
          "x": "7",
          "y": "19"
        },
        "1": {
          "length": "1",
          "width": "1",
          "x": "7",
          "y": "18"
        },
        "2": {
          "length": "1",
          "width": "1",
          "x": "7",
          "y": "17"
        }
      }
    }
  }
}
```

## **Games Model**

#### Games Index

List of all games played.

Path: 
`GET '/games'`

**Parameters** 
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
400 | Error | Bad Request. Specified parameters do not match.

**Example Response**
```
[
  {
		"username": "LilDebbie",
		"score": 50,
		"level_id": 1
	}
	{
		"username": "LilDebbie",
		"score": 50,
		"level_id": 2
	}
]
```

#### Games Create

Create a game instance.

Path: 
`POST '/games/new'`

**Parameters** 

Name | Type | Description
--- | ---
score | integer | **Required.** Score of a game. 
username | string | **Required.** Name of user.

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
400 | Error | Bad Request. Specified parameters do not match.

**Example Response**
```
[
  {
		"username": "LilDebbie",
		"score": 50,
		"level_id": 1
	}
	{
		"username": "KillerzKidz",
		"score": 50,
		"level_id": 2
	}
]
```

#### Show a Game

Returns a game with the specifed ID

Path: 
`GET '/game/:id/score'`

**Parameters** 
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
400 | Error | Bad Request. Specified parameters do not match.

**Example Response**
```
[
  {
		"username": "LilDebbie",
		"score": 50,
		"level_id": 1
	}
]
```

#### Update a Game

Returns a game with the specifed ID with the changed score.

Path: 
`POST '/game/:id/score'`

**Parameters** 

Name | Type | Description
--- | ---
score | integer | **Required.** Score of a game. 

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
400 | Error | Bad Request. Specified parameters do not match.

**Example Response**

```
[
  {
		"username": "LilDebbie",
		"score": 50,
		"level_id": 1
	}
]
```
