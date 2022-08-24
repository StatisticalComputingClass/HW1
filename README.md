# Homework 1 - Getting started

Student: *Last name*, *First name*

Helpful resources for R/Git/Github integration for troubleshooting:

  * [Happy Git with R](https://happygitwithr.com)
  * [H.Wickham intro to Git and Github with Rstudio](http://r-pkgs.had.co.nz/git.html#git-rstudio)

## Part 1: R and Rstudio installation

* Install [R from CRAN](https://cran.r-project.org). If you already have R installed, please check that you have a recent version (at least 4.0.0).

* Install [Rstudio](https://www.rstudio.com/products/rstudio/#Desktop). If you already have Rstudio installed, please update to the most recent version.

* Take a screen shot of your Rstudio console window at Rstudio opening that shows the R version number. Call it **RstudioRversion**.png (could also be jpg, jpeg or pdf depeding on screenshot program you use). You will be uploading this file later.

## Part 2: Other tools installation

If you are a **Windows** user:

* Install [Rtools](https://cran.rstudio.com/bin/windows/Rtools/) 
* Install [MikTex LaTeX](http://miktex.org/download)


If you are a **Mac OS** user:

* Install [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?mt=12). Within XCode go to Preferences: Downloads and install the Command Line Tools.
* Install [MacTex LaTeX](http://www.tug.org/mactex/downloading.html)
* Install [gfortran](https://gcc.gnu.org/wiki/GFortranBinariesMacOS) (You will not need it until HW5 so you can wait on this step if you prefer)

For other operating systems, see [Rstudio guide](https://support.rstudio.com/hc/en-us/articles/200486498-Package-Development-Prerequisites) for necessary tools.

## Part 3: Git installation
* Install [git](https://git-scm.com). If you use Windows, use [git for Windows](https://gitforwindows.org). In your terminal (Mac OS) or bash (installed with git for Windows), configure Git to recognize you. Please use your TAMU email if possible.

`git config --global user.name “First Last"`

`git config --global user.email "email@example.com"`

* Take a screen shot of your terminal window that shows you executing the above commands. Call it **Gitconfig**.png (could also be jpg, jpeg or pdf depeding on screenshot program you use). You will be uploading this file later.


## Part 4: Integration of Git, Github and R

* Create a [Github](https://github.com) account if not yet

* Accept the link to HW1 assignment - this will automatically create a GitHub repository for your personal work on the homework. **Star** the repository to easier find it later.

* Create Github personal access token to help with authentication on your local machine. A token on Github is something that is going to be used as password when you try to use Github locally with your GitHub user name. See [here](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) for short instructions on how to create it and set it up. Make sure you have granted ‘full control’ access rights to your Personal Access Token (repo option checked including all suboptions).

* Clone your HW1 repository locally using 

`git clone https://github.com/your_HW1_repository_path`

You can copy the path directly by clicking on **Code** item in Github. At this point, you will likely be asked to provide you personal access token (see above). It will act as password with your user name. It should be that on both Mac OS and Windows your credentials with personal access token will be saved after the first time you were prompted to enter them. To be on the safe side, once you have your credentials put in on Terminal/Bash as a result of say git clone, close everything, restart Rstudio and Terminal/Bash and see if it still asks you for credentials repeatedly.  If you are not longer asked for credentials - you are set! If you are, I recommend to carefully read troubleshooting advice (see below in the end of Part 5)

* Use Rstudio to open the project associated with the HW1 local directory. You should see the Git tab appear next to Environment and History consoles which will enable you to do staging, commits, pulls and pushes from within Rstudio. You will make all the changes locally, and only then push them to Github. If you do not see the Git tab, see [Rstudio version control](https://support.rstudio.com/hc/en-us/articles/200532077?version=1.1.463&mode=desktop) for further help. You may have to restart Rstudio to see the changes.

* Take a screen shot of your Rstudio window with the top right tab showing it's opened on HW1 project, Git panel opened and the Files displaying HW1 folder content.  Call it **RstudioHW1Git**.png (could also be jpg, jpeg or pdf depeding on screenshot program you use). You will be uploading this file later.

## Part 5: Basics of git

To practice using Git and basic commits, create a separate commit for the following changes:

* Commit 1: Change the *last name*, *first name* at the top of this document to your last name/first name.

* Commit 2: Create a new folder called Screenshots. Upload 3 screen shots you made previously into this folder (*all these changes should be in one commit*).

* Push your changes to Github.

**Troubleshooting:** If you experience any issues with Git/Github/Rstudio integration, see [here](https://happygitwithr.com/troubleshooting.html) for advice on how to solve your issues.

## Part 6: Simple program

We will next practice using Git/Github together by writing a simple R code in relation to linear model. You are asked to complete the following R scripts:

1. **FunctionsLM.R** contains skeletons for 4 simple functions associated with fitting linear model. Follow the instructions given in comments to fill all the functions (you can assume that the design matrix is full rank). As you work through the functions, follow **good testing practices** by testing your functions first on simple toy examples created on your own, and **good commit practices** by committing each logical change after successful test. Make sure that the R file only contains the functions, nothing else. **do not use any external libraries or functions such as lm** and do not erase any of the comments.

**Things to keep in mind:** R has several ways to store vectors: (a) as a vector type in R; (b) as a column-vector, that is matrix type in R with 1 column; (c) as a row-vector, that is matrix type in R with 1 row. As we will often cross-compare the code with linear algebra deviations, by vector we will mean a column vector stored as either (a) or (b). Your code should be **agnostic** to whether the vector input is supplied as (a) or (b). If you use operations that work differently depending on the type, make sure you have corresponding transformations built into your functions. For example
```r
x_a = c(1, 2, 3) # this is vector type
x_b = matrix(c(1, 2, 3), 3, 1) # this is the same vector stored as matrix
# sum works the same regardless
sum(x_a)
sum(x_b)
# matrix multiplication does not
x_a %*% x_a # gives inner-product, not recommended due to confusing syntax
x_b %*% x_b # gives error as incompatible dimensions (as one would expect)
# transform into specific type
as.vector(x_b) # goes from (b) to (a)
as.matrix(x_a) # goes from (a) to (b)
```

2. **SimpleProgram.R** is a script that illustrates the use of functions in 1. First, it creates training data $(X, Y)$ based on given model parameters, calculates least-squares vector of coefficients and evaluates estimation error. Secondly, it creates testing data $(Xtest, Ytest)$ and evaluates prediction error using (a) all covariates; (b) using only the first covariate. The missing parts of the code are indicated by [ToDo], **do not use any external libraries or functions such as lm** and do not erase any of the comments. Make sure to make consistent commits throughout and push your changes to GitHub in the end.

3. **Tests.R**. As you work through the functions in 1., you undoubtedly would want to test them on some toy examples, or perhaps compare a couple of versions. Perhaps you want to make modification to 2 and see how results are affected. This .R file is designed to save you corresponding work, and to make sure that the tests are separate from functions. **You are allowed to use any external libraries  or functions that you would like for testing and debugging your code here**


## Grading

* version control/commit practices (40%)
  - name change and screenshots commits 
  - clarity, logic and frequency of all other commits

* code style/comments (10%)
  - adherence with good R style and frequent, clear comments

* correctness (50%)
  - returns correct output
  - all parameters are used as expected, changes in default parameters produce correct output
  - tested on more than just provided example
