
# GFetchKitFramework

GFetchKitFramework is a powerful network client framework for managing network requests in modern iOS and macOS applications. It enables flexible and reusable API calls using Endpoint and APIClient constructs. This framework provides full control over network requests using Dependency Injection.


## Features

- Flexible API Configuration: Manage API endpoints from a central location with the Endpoint enum.

- Advanced Network Client: Fast and efficient API calls with the APIClient class.

- Cache Support: Optimize network requests with cache management.

- Logging and Error Management: Detailed logging and error management of network requests.

- Test Support: Easily testable and mockable structure.

  
## Setup 

With Swift Package Manager
You can integrate GFetchKitFramework with Swift Package Manager. You can add it to your project from Xcode's File > Swift Packages > Add Package Dependency menu using the following URL:

```bash 
 https://github.com/giraysengonul/GFetchKitFramework.git
```

Then you can import it into your project like this:

```bash 
 import GFetchKitFramework
```
## Usage/Examples

1.Endpoint Structure
You can configure API endpoints with the Endpoint enum. Here is a simple usage example:

```swift
let endpoint = Endpoint.fetch(
    baseURL: "https://api.example.com",
    urlPath: "/users",
    method: .get,
    queryParameters: [URLQueryItem(name: "id", value: "123")],
    headers: ["Authorization": "Bearer token"],
    bodyValue: nil
)

```

  2.Using APIClient
The APIClient class is configured with Dependency Injection and manages network requests. The following example focuses on making an API call and parsing the JSON response into the model:

```swift
// APIClient instance is created
let apiClient = APIClient()

//A request is made with an Endpoint and the response is parsed.
apiClient.execute(with: endpoint, parseModel: UserModel.self) { result in
    switch result {
    case .success(let user):
        print("Kullanıcı adı: \(user.name)")
    case .failure(let error):
        print("Hata: \(error.localizedDescription)")
    }
}

```

3.API Caching
GFetchKitFramework supports caching request results. When you repeat the same request, you can quickly retrieve the results from the cache:
```swift
if let cachedData = apiCacheManager.getCacheData(with: urlRequest.url) {
    // Use data from cache
}

```

## Testing Support

GFetchKitFramework is testable and mockable. The following example demonstrates that testing can be done by mocking the URLSessionProviderProtocol and other dependencies:

```bash
let mockSessionProvider = MockURLSessionProvider()
let mockAPIClient = APIClient(urlSessionProvider: mockSessionProvider)

// You can make API calls with mock objects during testing.

```

  
## Requirements

- iOS 16.0+ / macOS 14.0+
- Swift 5.0+
- Xcode 13.0+
## Contribute

Contributions are more than welcome! If you'd like to contribute to the GFetchKitFramework, follow these steps:

1-Fork the repository.

2-Create a feature branch (git checkout -b feature/AmazingFeature).

3-Commit your changes (git commit -m 'Add some AmazingFeature').

4-Push to the branch (git push origin feature/AmazingFeature).

5-Open a Pull Request.

Please ensure that your code follows the established coding conventions and is well-tested.

  
## License

[Apache License
Version 2.0, January 2004](http://www.apache.org/licenses/)

  
## Authors and Acknowledgements

- [@giraysengonul](https://www.github.com/giraysengonul) for design and development.
