
# To publish your blog
Run

    git push --all

A post-commit hook is created based on http://oli.jp/2011/github-pages-workflow/


# To replace site.url with ..

    ./local.sh

# To replace .. with site.url

    ./website.sh

## pre-commit hook

    #!/bin/sh
    echo ">>> Executing [./website.sh] to convert .. into {{ site.url }} <<<"
    ./website.sh
    git diff --cached --name-only | while read line; do
        echo ">>> git add $line <<<"
        git add $line
    done    

## post-commit hook

    #!/bin/sh
    git checkout gh-pages
    git rebase master
    git checkout master