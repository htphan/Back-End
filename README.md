# API Documentation for HckthnProjectZero5

Website: https://fierce-wave-2814.herokuapp.com/

## Table of Contents

1. [Map](#map-model)
	* [Create Map](#create-map)
	* [Show Map](#show-map)
	* [Index](#index)
2. [Consultant Model](#consultant-model)
	* [Consultant Index](#consultants-index)
	* [Consultant cost](#show)
	* [Create a Consultant](#create-a-consultant)
3. [Games Model](#games-model)
<<<<<<< HEAD
	* [Show All Guesses of a Post](#show-all-guesses-of-a-particular-post)
	* [Show Guesses for a User in a Post](#show-guesses-for-a-user-in-a-particular-post)
	* [Create a Guess](#create-a-guess)
	* [Show a Guess](#show-a-guess)
	* [Delete a Guess](#delete-a-guess)
=======
	* [Create a Game](#create-a-game)
	* [Show Game score](#show-game-score)
	* [Update Game Score](#update-game-score)
>>>>>>> master

## **Map Model**

#### ***CREATE MAP***
* **Path:** 
``` 
POST 'maps/new'
```

* **Params:** 
``` 
budget,
name
```
* **Response**

- Example Response
```
{
  "map": {
    "budget": 100,
    "name": "tucker"
  }
}
```

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
422 | Error | Unprocessable Entity

#### ***SHOW MAP***
* **Path:** 
```
GET  'maps/budget/:name'
```
* **Params:**
```
name
```
* **Response**

- Example Response
```
{
  "map": {
    "budget": 20,000,
    "name": "tucker"
  }
}
```

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.

#### ***INDEX***
* **Path**
```
 GET 'maps'
```
* **Params**
```
none
```
* **Response**

-Example Response
```
{
  "map": [
    {
      "budget": 20000,
      "name": "level one"
    },
    {
      "budget": 100,
      "name": "level twenty"
    }
  ]
}
```
**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.

## **Post Model**

#### Posts Index
**Pagination Enabled: **
List of all posts in the database.

Path: 
`GET '/posts'`

**Parameters**
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | All posts were successfully returned.
204 | Success | The server successfully processed the request, but not content was returned due to an empty database. 

**Example Response**
```
[
  {
    "id": 1,
    "owner": {
      "username": "testusername",
      "full_name": "John Doe",
      "email": "test@email.com",
      "total_points": 150,
    },
    "img_url": "http://i.imgur.com/zCpxKJQ.png",
    "answer": "potato",
    "hint": "food"
  },
  {
  	"id": 2,
    "owner": {
      "username": "zebracakes",
      "full_name": "Lil Debbie",
      "email": "lil@debbie.com",
      "total_points": 300,
    },
    "img_url": "http://i.imgur.com/uyQQK2A.png",
    "answer": "snow",
    "hint": "cold"
  },
  {
  	"id": ,
    "owner": {
      "username": "zebracakes",
      "full_name": "Lil Debbie",
      "email": "lil@debbie.com",
      "total_points": 300,
    },
    "img_url": "http://i.imgur.com/uyQQK2A.png",
    "answer": "sugar",
    "hint": ""
  }
]
    
```

#### Incomplete Posts for a User

**Pagination Enabled: **
Lists the posts that a specific has not completed.

Path: 
`GET '/posts/user/:username/incomplete'`

**Parameters**
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Requested processed and returned posts not done by a user.
400 | Error | Bad Request. Specified parameters do not match.


**Example Response**
```
[
  {
  	"id": 1,
    "owner": {
      "username": "testusername",
      "full_name": "John Doe",
      "email": "test@email.com",
      "total_points": 150,
    },
    "img_url": "http://i.imgur.com/zCpxKJQ.png",
    "answer": "potato",
    "hint": "food"
  },
  {
  	"id": 2,
    "owner": {
      "username": "zebracakes",
	  "full_name": "Lil Debbie",
      "email": "lil@debbie.com",
      "total_points": 300,
    },
    "img_url": "http://i.imgur.com/uyQQK2A.png",
    "answer": "snow",
    "hint": "food"
  }
]
```

#### Show a Post
Shows the post data for a specified post.

Path: 
`GET '/post/:post_id'`

**Parameters**
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Server successfully requested returned post data.
400 | Error | Bad Request. Specified parameters do not match.


**Example Response**
```
{
  "id": 1,
  "owner": {
    "username": "zebracakes",
    "full_name": "Lil Debbie",
    "email": "lil@debbie.com",
    "total_points": 300,
  },
  "img_url": "http://i.imgur.com/zCpxKJQ.png",
  "answer": "potato",
  "hint": "food"
}
```

#### Show a User's Posts

**Pagination Enabled: **
Shows all posts created by a specified user.

Path: 
`GET '/posts/user/:username`

**Parameters**
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Server successfully requested returned post data for the specified user.
400 | Error | Bad Request. Specified parameters do not match.

**Example Response**
```
[
  {
  	"id": 1,
    "owner": {
      "username": "zebracakes",
      "full_name": "Lil Debbie",
      "email": "lil@debbie.com",
	  "total_points": 300,
	},
	"img_url": "http://i.imgur.com/zCpxKJQ.png",
	"answer": "potato",
	"hint": "food"
  },
  {
  	"id": 2,
	"owner": {
	  "username": "zebracakes",
	  "full_name": "Lil Debbie",
	  "email": "lil@debbie.com",
	  "total_points": 300,
	},
	"img_url": "http://i.imgur.com/uyQQK2A.png",
	"answer": "snow",
	"hint": "cold"
  }
]
```

#### Create a Post
Creates a post for the current user.

Path: 
`POST '/posts'`

**Parameters**

Name | Type | Description
--- | --- | ---
img_url | string | **Required.** Link to the image.
answer | string | **Required.** User's answer input. Character Limit: 10.
hint | string | **Optional.** User's hint input. If input is empty, the API return will be an empty string.

**Status Codes**

Code | Type | Description
---|---|---
201 | Success | Server has processed the request and has successfully created the post.
422 | Error | Unprocessable Entry. Specified parameters are invalid.
 
**Example Input**
```
{
  "img_url": "http://i.imgur.com/uyQQK2A.png",
  "answer": "snow",
  "hint": "cold"
}

```

**Example Response**
```
{
  "id": 1,
  "owner": {
	"username": "zebracakes",
	"full_name": "Lil Debbie",
	"email": "lil@debbie.com",
	"total_points": 300,
  },
  "img_url": "http://i.imgur.com/uyQQK2A.png",
  "answer": "snow",
  "hint": "cold"
}
```
#### Delete a Post
Deletes the specified post.

Path: 
`DELETE '/post/:post_id'`

**Parameters**
*None*

**Status Codes**

Code | Type | Description
---|---|---
204 | Success | No Content. Server successfully processed the request and has removed the post.
400 | Error | Bad Request. Specified parameters do not match.


**Example Response**
```
No Written Reponse.
Only 204 Code is returned.
```



## **Guess Model**

#### Show All Guesses of a Particular Post

**Pagination Enabled: **
Lists all the guesses in a specified post from all users.

Path: 
	`GET '/post/:post_id/guesses'`

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
	"owner": {
	  "username": "testusername",
	  "full_name": "John Doe",
	  "email": "test@email.com",
	  "total_points": 150,
	},
	"post_id": 1,
	"guess": "foobar",
	"points": 0
  },
  {
	"id": 2,
	"owner": {
      "username": "zebracakes",
      "full_name": "Lil Debbie",
	  "email": "lil@debbie.com",
	  "total_points": 300,
	},
	"post_id": 1,
	"guess": "kitty",
	"points": 80,
	"potential_points": 90
  }
]
```

#### Show guesses for a user in a particular post

**Pagination Enabled: **
Lists all the guesses for a particular user in a specified post.

Path:
`GET '/post/:post_id/guesses/user/:username'`

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
	"owner": {
	  "username": "testusername",
	  "full_name": "John Doe",
	  "email": "test@email.com",
	  "total_points": 150,
	},
	"post_id": 1,
	"guess": "foobar",
	"points": 0,
	"potential_points": 90
  },
  {
  	"id": 2,
	"owner": {
	  "username": "testusername",
	  "full_name": "John Doe",
	  "email": "test@email.com",
	  "total_points": 150,
	},
	"post_id": 1,
	"guess": "kitty",
  	"points": 80,
  	"potential_points": 90
  }
]
```

#### Create a Guess
Creates a guess on a specified post from the logged in user. **Note:** A user should only complete a specific post once.

Path: 
`POST '/post/:post_id/guesses'`

**Parameters**

Name | Type | Description
--- | --- | ---
guess | string | **Required.** User provided guess to the specified post. Character Limit: 10.

**Status Codes**

Code | Type | Description
---|---|---
201 | Success | Request was received and a guess was successfully created.
422 | Error | Unprocessable Entry. Specified parameters are invalid.

**Example Input**
```
{
  "guess": "foobar"
}
```

**Example Response**
```
{
  "id": 1,
  "owner": {
	"username": "testusername",
	"full_name": "John Doe",
	"email": "test@email.com",
	"total_points": 150,
  },
  "post_id": 1,
  "guess": "foobar",
  "potential_points": 90
}
```

#### Show a Guess
Returns a specified guess.

Path: 
`GET '/guess/:guess_id'`

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
  "id": 1,
  "owner": {
    "username": "zebracakes",
    "full_name": "Little Debbie",
    "email": "little@debbie.com",
    "total_points": 300,
  },
  "post_id": 1,
  "guess": "kitty",
  "points": 80,
  "potential_points": 90
}
```

#### Delete a Guess
Deletes a specified guess.

Path: 
`DELETE '/guess/:guess_id'`

**Parameters**
*None*

**Status Codes**

Code | Type | Description
---|---|---
200 | Success | Request was received and delivered successfully.
400 | Error | Bad Request. Specified parameters do not match.
401 | Error | Unauthorized. A different user is not authorized to delete another user's guess.

**Example Response**
```
{
  "message": "The guess was successfully deleted."
}
```