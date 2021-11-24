# AuthenticationCredential

Types adopting the `AuthenticationCredential` protocol can be used to authenticate `URLRequest`s.

``` swift
public protocol AuthenticationCredential 
```

One common example of an `AuthenticationCredential` is an OAuth2 credential containing an access token used to
authenticate all requests on behalf of a user. The access token generally has an expiration window of 60 minutes
which will then require a refresh of the credential using the refresh token to generate a new access token.

## Requirements

### requiresRefresh

Whether the credential requires a refresh. This property should always return `true` when the credential is
expired. It is also wise to consider returning `true` when the credential will expire in several seconds or
minutes depending on the expiration window of the credential.

``` swift
var requiresRefresh: Bool 
```

For example, if the credential is valid for 60 minutes, then it would be wise to return `true` when the
credential is only valid for 5 minutes or less. That ensures the credential will not expire as it is passed
around backend services.

### requiresRefresh

Whether the credential requires a refresh. This property should always return `true` when the credential is
expired. It is also wise to consider returning `true` when the credential will expire in several seconds or
minutes depending on the expiration window of the credential.

``` swift
var requiresRefresh: Bool 
```

For example, if the credential is valid for 60 minutes, then it would be wise to return `true` when the
credential is only valid for 5 minutes or less. That ensures the credential will not expire as it is passed
around backend services.

### requiresRefresh

Whether the credential requires a refresh. This property should always return `true` when the credential is
expired. It is also wise to consider returning `true` when the credential will expire in several seconds or
minutes depending on the expiration window of the credential.

``` swift
var requiresRefresh: Bool 
```

For example, if the credential is valid for 60 minutes, then it would be wise to return `true` when the
credential is only valid for 5 minutes or less. That ensures the credential will not expire as it is passed
around backend services.
