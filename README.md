# Scaffoldize Post
Rails Scaffold 바닥부터 만들기
---
## 1. Non Scaffoldy way
### 0. routes.rb
- '/posts/index' => 'posts#index'
- '/posts/new' => 'posts#new'
- '/posts/create' => 'posts#create'
- '/posts/show/:id' => 'posts#show'
- '/posts/edit/:id' => 'posts#edit'
- '/posts/update/:id' => 'posts#update'
- '/posts/destroy/:id' => 'posts#destroy'

### 1. PostsController
- index : 모든 포스트를 보여준다. (제목만 보여주고, 링크를 통해 들어가면 show page로 간다.)
- new : 새로운 글을 입력 받는다(-> create)
- create : 새로운 글을 DB에 저장한다.
- show : 글 1개를 보여준다.
- edit : 수정될 글을 입력 받는다(-> update)
- update : 글을 수정하여 DB에 반영한다.
- destroy : 글을 지운다.

### 2. Class Post
- title : string
- content : text

## 2. Scaffold 처럼 만들기
### 1. routes
```ruby
# CREATE (POST /posts -> 포스트를 만드는거)
get '/posts/new' => 'posts#new'

post '/posts' => 'posts#create'

# READ (GET /posts -> 모두 읽는거, GET /posts/:id 1개 읽는거)
get '/posts' => 'posts#index'
# get 'posts/show/:id' => 'posts#show'
get '/posts/:id' => 'posts#show'

# UPDATE (PUT /posts/:id -> post 1개를 수정하기)
get '/posts/:id/edit' => 'posts#edit'

put '/posts/:id' => 'posts#update'

# DELETE (DELETE /posts/:id -> post 1개를 지우기)
delete '/posts/:id' => 'posts#destroy'
```

### 2. view helper 사용하기

### 3. form helper 사용하기

## 3. 실습 : 퍼펙트 루비 온 레일즈
- 퍼펙트 루비온 레일즈 scaffold 내용 따라하기
