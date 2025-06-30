# base205al.github.io

This is the repo for the website published at https://www.base205al.org

## General Info

This is a public repo.  It uses [Hugo](https://gohugo.io) as its static content creation engine.

There is no dynamic content on this website.

## Contributing

If you'd like to contribute to this site, we would be happy to consider any Creative Commons licensed content you might want to provide.  All published content will be labeled CC-BY.  If you don't know what that means, then we might want to build a "licensing" page.  If you want, we might also consider CC-BY-SA.

### Ways to Contribute

We prefer markdown posts.

#### Easy

The cheap and easy way is to submit a PR against the `develop` branch, updating the `/content` and/or `/static` directories of this repo.  

#### Harder

The more time-consuming and objectively better way is to install Hugo and golang, fork and clone the repository, write your content using `hugo server -D` and, just like above, submit a PR.

- Install Git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
- Install Hugo: https://gohugo.io
- Install Golang: https://go.dev/doc/install
- Fork this repo: https://github.com/base205al/base205al.github.io/fork 
- Clone your fork and change to the working copy
- Make a new branch from the `develop` branch.
- Setup your local site:
  - `hugo mod get -u`
  - `hugo mod tidy`
- Start the local Hugo server: `hugo server -D`
- Open a browser to the specified url.  That will probably be http://localhost:1313
- Edit the source and work on your content.  Hugo will rebuild the site as it changes. 
  - `hugo new content XYZ.md` will make a new "page" item called `content/en/XYZ.md` for you to work with
  - `hugo new post/abc.md` will make a new "post" item called `content/post/en/abc.md`
  - Remember, [the frontmatter matters](https://gohugo.io/content-management/front-matter/)
- Commit as you see fit to your repo, push, and make a new pull-request from your changed branch to `develop`. Only PRs to `develop` will be considered.

#### The PR

Someone will review it and if it gets merged, it'll eventually be merged to `main` and will be built and deployed.  You'll be internet famous!
