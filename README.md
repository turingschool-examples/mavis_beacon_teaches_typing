## Mavis Beacon Teaches Typing

* bundle
* rake test

### Evaluation Criteria

Subjective evaluation will be made on your work/process according to the following criteria:

### 1. Analytic/Algorithmic Thinking

* 4: Developer independently breaks complex processes into logical sequences of small steps and validates progress along the way
* 3: Developer breaks complex problems into small, digestible steps and executes them
* 2: Developer can execute an algorithm or plan when steps are provided
* 1: Developer struggles to implement an algorithm or plan

### 2. Ruby Syntax & Standard Library

* 4: Developer is able to comfortably implement solutions using the best-choice tools Ruby has to offer
* 3: Developer is able to comfortably implement more than one solution in Ruby through refactoring
* 2: Developer is able to write Ruby with some debugging of fundamental concepts; solution works but is messy or does not use the best tools for the job
* 1: Developer is able to write some Ruby, but gets stuck on or needs help with fundamental concepts

### 3. Rails Syntax & API

* 4: Developer is able to smoothly utilize Rails methods and structures with a minimum of debugging or support
* 3: Developer is able to utilize Rails methods and structures, but needs occasional guidance
* 2: Developer is generally able to utilize Rails, but shows confusion or shallow knowledge about what Rails provides
* 1: Developer needs significant support to utilize Rails’ elementary methods/concepts

### 4. MVC & Rails Style

* 4: Developer is able to craft Rails features that make smart use of Ruby, follow the principles of MVC, and keep logic out of views and controllers
* 3: Developer generally writes clean Rails features that make smart use of Ruby, with some struggles in pushing logic down the stack
* 2: Developer struggles with some essential concepts of MVC
* 1: Developer shows little or no understanding of how to craft Rails applications; confuses functions of models, views, and/or controllers

### 5. Testing

* 4: Developer writes tests at multiple layers of abstraction to drive development
* 3: Developer writes tests at multiple layers of abstraction to drive development with guidance
* 2: Developer struggles to use tests to drive development
* 1: Developer develops without guidance from tests

### 6. Collaboration

* 4: Developer actively seeks collaboration both before implementing, while in motion, and when stuck
* 3: Developer lays out their thinking before attacking a problem and integrates feedback throughout the process
* 2: Developer explains thinking while implementing; may be unclear in explanations
* 1: Developer is able to integrate unsolicited feedback but does not really collaborate; does not explain thought process; needs to be reminded to "think out loud"

#### Notes: What does it mean to calculate a score? 

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
