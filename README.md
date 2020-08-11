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

For other operating systems, see [Rstudio guide](https://support.rstudio.com/hc/en-us/articles/200486498-Package-Development-Prerequisites) for necessary tools.

## Part 3: Git installation
* Install [git](https://git-scm.com). If you use Windows, use [git for Windows](https://gitforwindows.org). In your terminal, configure Git to recognize you. Please use your TAMU email if possible.

`git config user.name “First Last"`

`git config --global user.email "email@example.com"`

* Take a screen shot of your terminal window that shows you executing the above commands. Call it **Gitconfig**.png (could also be jpg, jpeg or pdf depeding on screenshot program you use). You will be uploading this file later.


## Part 4: Integration of Git, Github and R

* Create a [Github](https://github.com) account if not yet

* Accept the link to HW1 assignment - this will automatically create a GitHub repository for your personal work on the homework. **Star** the repository to easier find it later.

* Clone your HW1 repository locally using 

`git clone https://github.com/your_HW1_repository_path`

You can copy the path directly by clicking on **Code** item in Github

* Use Rstudio to open the project associated with the HW1 local directory. You should see the Git tab appear next to Environment and History consoles which will enable you to do staging, commits, pulls and pushes from within Rstudio. You will make all the changes locally, and only then push them to Github. If you do not see the Git tab, see [Rstudio version control](https://support.rstudio.com/hc/en-us/articles/200532077?version=1.1.463&mode=desktop) for further help. You may have to restart Rstudio to see the changes.

* Take a screen shot of your Rstudio window with the top right tab showing it's opened on HW1 project, Git panel opened and the Files displaying HW1 folder content.  Call it **RstudioHW1Git**.png (could also be jpg, jpeg or pdf depeding on screenshot program you use). You will be uploading this file later.

## Part 5: Basics of git

To practice using Git and basic commits, create a separate commit for the following changes:

* Commit 1: Change the *last name*, *first name* at the top of this document to your last name/first name.

* Commit 2: Create a new folder called Screenshots. Upload 3 screen shots you made previously into this folder (*all these changes should be in one commit*).

* Push your changes to Github.

## Part 6: Simple program

We will next practice using Git/Github together by writing a simple R code in relation to linear model. You are asked to complete the following R scripts:

1. **FunctionsLM.R** contains sceletons for 4 simple functions associated with fitting linear model. Follow the instructions given in comments to fill all the functions. As you work through the functions, follow **good testing practices** by testing your functions first on simple toy examples created on your own, and **good commit practices** by commiting each logical change after succesful test. Make sure that the R file only contains the functions, nothing else. **do not use any external libraries or functions such as lm** and do not erase any of the comments.

2. **SimpleProgram.R** is a script that illustrates the use of functions in 1. First, it creates training data $(X, Y)$ based on given model parameters, calculates least-squares vector of coefficients and evaluates estimation error. Secondly, it creates testing data $(Xtest, Ytest)$ and evaluates prediction error using (a) all covariates; (b) using only the first covariate. The missing parts of the code are indicated by [ToDo], **do not use any external libraries or functions such as lm** and do not erase any of the comments. Make sure to make consistent commits throughout and push your changes to GitHub in the end.

3. **Tests.R**. As you work through the functions in 1., you undoubtedly would want to test them on some toy examples, or perhaps compare a couple of versions. Perhaps you want to make modification to 2 and see how results are affected. This .R file is designed to save you corresponding work, and to make sure that the tests are separate from functions. **You are allowed to use any external libraries  or functins that you would like for testing and debugging your code here**


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