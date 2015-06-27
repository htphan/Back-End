# API Documentation for HckthnProjectZero5

Website: https://fierce-wave-2814.herokuapp.com/

## Table of Contents



## **Level Model**

## **Consultant Model**

#### Consultant Index
List of all Consultants

Path:
`GET '/consultants'`

**Parameters**
*None*

**Status Code**

Code | Type | Description
-- | -- | --
200 | Success | All consultants were successfully returned.
204 | Success | The server successfully processed the request, but not content was returned due to an empty database. 

**Example Response**
```
[
  {
    "name": "Junior Developer",
    "cost": 100
  },
  {
    "name": "Senior Developer",
    "cost": 300
  }
]
```

#### Show Consultant
Show a single consultant




## **Games Model**

