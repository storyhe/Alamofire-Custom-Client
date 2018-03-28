# Alamofire-Custom-Client

Alamofire.request~ 식으로 각각 호출할수있지만,
그러면 UserAgent 나 Authorization 도 줄줄이 붙어서 소스가 더러워져서..

그리고 서버 요청에 따라 403이면 update 든 뭐든 수행할수있게 urlSession 도 하나 받아놓음.

유용할수도 있고, 아닐수도 있고..


# HOW TO USE

```swift
OurClient.shared.request("http://naver.com").validate().responseString { (response) in
  print(response.result.value)
}
```

shared 부터는 Alamofire 기본틀대로 이용하시면 됩니다.
