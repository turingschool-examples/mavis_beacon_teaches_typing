## Mavis Beacon Teaches Typing

* bundle
* rake test

#### What does it mean to calculate a score? 

The percent correct should take into consideration whether or not the character entered matches the character in the same position in the original. So for example:

```ruby
original = "abcdefghij"
attempt  = "aXcdefghij"
```

There are 10 characters in the original. There are 9 *correct* characters in the attempt since all but one character (`X`) is in the same position as the original. Therefore, the percent correct would be 90%.

```ruby
original = "abcdefghij"
attempt  = "abcdefgh"
```

There are 10 characters in the original. There are 8 *correct* characters in the attempt since the first 8 characters all match the characters in the respective positions of the original, but there are two missing characters on the end. Therefore, the percent correct would be 80%.


```ruby
original = "abcdefghij"
attempt  = "acdefghij"
```

There are 10 characters in the original. There is 1 *correct* character in the attempt since the only character that matches the character in the same position of the original is `a`. Therefore, the percent correct would be 10%. 