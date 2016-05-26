
# To publish your blog
Run

    git push --all

A post-commit hook is created based on http://oli.jp/2011/github-pages-workflow/


# To replace site.url with ..

    sed -i -e "s/({{ site\.url }}\//(\.\.\//g" <filename>
