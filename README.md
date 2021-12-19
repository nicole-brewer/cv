# Nicole Brewer's CV

I'm a long-time fan of @posquit0 's Awesome-CV, but have had issues in the past trying to template it with Pandoc. I'm glad I found [vitae](https://pkg.mitchelloharawild.com/vitae/index.html), which has done the hard work for me.

The only downside is that there are several stylistic classes present Awesome-CV that aren't represented in vitae, including @aminmkhan 's fork that extends a publication class. I was able to achieve a semblence of one of these classes by taking a hint from the [maintainer's personal CV](https://github.com/mitchelloharawild/CV).

My Github aciton file and Docker env are conceptually replicated from @mlampros's [My.CVitae](https://github.com/mlampros/My.CVitae), but I incorperate the [rorcid](https://docs.ropensci.org/rorcid/index.html) package to pull down my publications from the web. This requires setting up a repository secret.
