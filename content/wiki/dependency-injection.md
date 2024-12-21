+++
toc = true
hideReply = true
title = "Dependency Injection"
author = "Lorenzo Drumond"
date = "2024-07-02T13:53:22"
tags = ["computer_science",  "injection",  "programming",  "dependency"]
+++



**Definition**:
Dependency Injection (DI) is a design pattern used in object-oriented programming where an object's dependencies (i.e., the objects it relies on to function) are injected into it, rather than the object creating these dependencies itself. This promotes loose coupling, enhances testability, and makes it easier to manage and maintain the code.

### Example in Python

Consider a scenario where you have a service that sends notifications. This service can send notifications via email or SMS.

1. **Without Dependency Injection**:

```python
class EmailService:
    def send_email(self, message):
        print(f"Sending email with message: {message}")

class SMSService:
    def send_sms(self, message):
        print(f"Sending SMS with message: {message}")

class NotificationService:
    def __init__(self):
        self.email_service = EmailService()
        self.sms_service = SMSService()

    def notify(self, message, method):
        if method == "email":
            self.email_service.send_email(message)
        elif method == "sms":
            self.sms_service.send_sms(message)

notification_service = NotificationService()
notification_service.notify("Hello, World!", "email")
notification_service.notify("Hello, World!", "sms")
```

In this example, `NotificationService` directly creates instances of `EmailService` and `SMSService`. This makes the `NotificationService` class tightly coupled to `EmailService` and `SMSService`, making it harder to test and maintain.

2. **With Dependency Injection**:

```python
class EmailService:
    def send_email(self, message):
        print(f"Sending email with message: {message}")

class SMSService:
    def send_sms(self, message):
        print(f"Sending SMS with message: {message}")

class NotificationService:
    def __init__(self, email_service, sms_service):
        self.email_service = email_service
        self.sms_service = sms_service

    def notify(self, message, method):
        if method == "email":
            self.email_service.send_email(message)
        elif method == "sms":
            self.sms_service.send_sms(message)

email_service = EmailService()
sms_service = SMSService()
notification_service = NotificationService(email_service, sms_service)
notification_service.notify("Hello, World!", "email")
notification_service.notify("Hello, World!", "sms")
```

In this version, the `NotificationService` class no longer creates instances of `EmailService` and `SMSService` itself. Instead, these dependencies are injected into it from the outside. This approach has several benefits:

- **Loose Coupling**: `NotificationService` does not depend on the concrete implementations of `EmailService` and `SMSService`. It depends on their interfaces (in this case, the methods they provide).
- **Easier Testing**: You can easily replace `EmailService` and `SMSService` with mock objects when testing `NotificationService`.
- **Flexibility**: You can change the implementations of `EmailService` and `SMSService` without modifying `NotificationService`.

### Summary

Dependency Injection helps in creating more modular, testable, and maintainable code by decoupling the dependencies from the class that uses them. This is achieved by injecting the dependencies from outside rather than letting the class create them internally.

## References
