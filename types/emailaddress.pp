# naive email address validation
type Tea::EmailAddress = Pattern[/\A(?:[\w+\-].?)+@[a-z\d\-]+(?:\.[a-z]+)*\.[a-z]+\z/]
