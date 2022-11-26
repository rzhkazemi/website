from django.urls import path

from blog.views import PostList, PostSubmitView, PostDetail, PostSearch  # , BlogCategory

from blog.feeds import LatestEntriesFeed

app_name = "blog"

urlpatterns = [

    path("list/", PostList.as_view(), name="blog-index"),

    path("postsubmit/", PostSubmitView.as_view(), name="postsubmit"),

    path("detail/<int:pk>/", PostDetail.as_view(), name="detail"),

    path("category/<str:category_name>/",
         PostList.as_view(), name="category"),
    path("author/<str:author_username>/", PostList.as_view(), name="author"),

    path("search/", PostSearch, name="search"),

    path("tag/<slug:tag_slug>", PostList.as_view(), name="tag"),

    path("rss/feed/", LatestEntriesFeed(), name="rss"),
]
