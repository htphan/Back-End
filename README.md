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
  	"id": 1,
		"properties": {
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
[
  {
  	"id": 1,
		"properties": {
		}
	}
]
```

#### Create a Level

Shows a single level.

Path: 
`POST '/levels/new'`

**Parameters** 
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
422 | Error | Unprocessable Entry. Specified parameters are invalid.

**Example Response**
```
[
  {
  	"id": 1,
		"properties": {
		}
	}
]
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
		"level_id": 1
	}
]
```

#### Games Create

Create a game instance.

Path: 
`POST '/games/new'`

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
		"level_id": 1
	}
]
```

