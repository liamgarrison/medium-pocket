## Background and Objectives

This is an app to save [Medium](https://medium.com) posts and read them later:

### User stories:

```
As a user, I can list all posts I saved
As a user, I can add a post I want to read later
As a user, I can read a post I saved
As a user, I can mark a post as read
```

## Demo

When you run the ```lib/app.rb``` file, it will give load the terminal app.

#### List Posts

```
------------------------------------
Welcome to your Medium pocket reader
------------------------------------

----------------------------
What do you want to do next?
----------------------------
1. List posts
2. Save post for later
3. Read post
4. Mark post as read
5. Exit
> 1

1. [x] - What’s your goal for learning to code? (Boris Paillard)
2. [ ] - Teaching Programming is Hard (Boris Paillard)
```

#### Save post for later

```
----------------------------
What do you want to do next?
----------------------------
1. List posts
2. Save post for later
3. Read post
4. Mark post as read
5. Exit
> 2

Path?
> le-wagon/this-is-what-a-developer-looks-like-379c261db24d

1. [x] - What’s your goal for learning to code? (Boris Paillard)
2. [ ] - Teaching Programming is Hard (Boris Paillard)
3. [ ] - This is what a developer looks like (Rebecca Menat)
```

#### Read post

```
----------------------------
What do you want to do next?
----------------------------
1. List posts
2. Save post for later
3. Read post
4. Mark post as read
5. Exit
> 3

1. [x] - What’s your goal for learning to code? (Boris Paillard)
2. [ ] - Teaching Programming is Hard (Boris Paillard)
3. [ ] - This is what a developer looks like (Rebecca Menat)
Index?
> 2

The post content will be displayed here
```

#### Mark post as read

```
----------------------------
What do you want to do next?
----------------------------
1. List posts
2. Save post for later
3. Read post
4. Mark post as read
5. Exit
> 4

1. [x] - What’s your goal for learning to code? (Boris Paillard)
2. [ ] - Teaching Programming is Hard (Boris Paillard)
3. [ ] - This is what a developer looks like (Rebecca Menat)
Index?
> 2

1. [x] - What’s your goal for learning to code? (Boris Paillard)
2. [x] - Teaching Programming is Hard (Boris Paillard)
3. [ ] - This is what a developer looks like (Rebecca Menat)
```

#### Exit gracefully

```
----------------------------
What do you want to do next?
----------------------------
1. List posts
2. Save post for later
3. Read post
4. Mark post as read
5. Exit
> 5

Bye bye!
```

The user only types the `path` of the Medium article. The `path` is the text that comes after the domain name in a url.

For instance, to save [this article](https://medium.com/le-wagon/this-is-what-a-developer-looks-like-379c261db24d), the path the user need to enter is everything that is after `https://medium.com/` i.e. `le-wagon/this-is-what-a-developer-looks-like-379c261db24d`.
