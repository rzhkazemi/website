from django.shortcuts import render, redirect, get_object_or_404

from django.contrib import messages

from django.views import View

from django.http import HttpResponseRedirect

from blog.models import Comment, PostGallery, Post, Category

from blog.forms import CaptchaCommentForm, PostForm, PostGalleryForm

from django.forms import modelformset_factory

from django.views.generic.list import ListView

from django.views.generic.detail import DetailView

from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage

from taggit.models import Tag

from django.urls import reverse

from django.conf import settings

from django.shortcuts import redirect
# Create your views here.


class PostList(ListView):

    context_object_name = "posts"

    def get(self, request, **kwargs):

        posts = Post.objects.filter(status=True).order_by("-publish_date")

        tag = None

        if cgn := kwargs.get("category_name"):

            posts = posts.filter(category__name=cgn)

        if aun := kwargs.get("author_username"):

            posts = posts.filter(
                author__username=aun)

        if tgn := kwargs.get("tag_slug"):

            tag = get_object_or_404(Tag, slug=tgn)

            print(tag)

            posts = posts.filter(tags__in=[tag])

        posts = Paginator(posts, 3)

        try:

            page_number = request.GET.get("page")

            posts = posts.get_page(page_number)

        except PageNotAnInteger:

            posts = posts.get_page(1)

        except EmptyPage:

            posts = posts.get_page(1)

        return render(request, "blog/post_list.html", {"posts": posts})


class PostDetail(View):

    posts = Post.objects.filter(status=True)

    def get(self, request, pk, *args, **kwargs):

        post = get_object_or_404(self.posts, pk=pk)

        if post:

            post.count_view += 1

            post.save()

        comments = post.comments.filter(approved=True)

        commentform = CaptchaCommentForm()

        context = {

            "post": post,

            "comments": comments,

            "commentform": commentform
        }

        return render(request, "blog/post_detail.html", context)

    def post(self, request, pk, *args, **kwargs):

        new_comment = None

        post = get_object_or_404(self.posts, pk=pk)

        comments = post.comments.filter(approved=True)

        commentform = CaptchaCommentForm(request.POST)

        context = {
            "post": post,

            "commentform": commentform,

            "comments": comments
        }

        if commentform.is_valid():

            new_comment = commentform.save(commit=False)

            new_comment.post = post

            new_comment.save()

            messages.success(request, "نظر شما با موفقیت ثبت شد")

            return redirect(request.META.get('HTTP_REFERER'))

        return render(request, "blog/post_detail.html", context)


class PostSubmitView(View):

    ImageFormSet = modelformset_factory(
        PostGallery, PostGalleryForm, extra=4)

    def get(self, request, *args, **kwargs):

        postform = PostForm()

        imageformset = self.ImageFormSet(queryset=PostGallery.objects.none(),)

        return render(request, "blog/postsubmit.html", {"postform": postform, "imageformset": imageformset})

    def post(self, request, *args, **kwargs):

        postform = PostForm(request.POST)

        imageformset = self.ImageFormSet(request.POST, request.FILES)

        if postform.is_valid() and imageformset.is_valid():

            post_obj = postform.save()

            for form in imageformset.cleaned_data:

                if form:

                    PostGallery.objects.create(
                        post_image_name=form["post_image_name"],

                        post=post_obj)

            return redirect('main:index')

        else:

            return render(request, "blog/postsubmit.html", {"postform": postform, "imageformset": imageformset})


def PostSearch(request):

    posts = Post.objects.filter(status=True)

    if request.method == "GET":

        if s := request.GET.get("s"):

            res = posts.filter(content__icontains=s)

            res = Paginator(res, 3)

            try:

                page_number = request.GET.get("page")

                res = res.get_page(page_number)

            except PageNotAnInteger:

                res = res.get_page(1)

            except EmptyPage:

                res = res.get_page(1)

            return render(request, "blog/search_result.html", {"res": res})
