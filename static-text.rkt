#lang at-exp racket

(require scribble/base)

(provide top-matter review-format review-protocol threats-to-validity)

(define top-matter
  (list
   @para{We are evaluating the results presented by the
         @(hyperlink "http://reproducibility.cs.arizona.edu/"
                     "study at the University of Arizona").
         Our goal is to allow authors and any other interested parties
         to review that study's findings about an individual paper,
         and attempt to reconstruct their findings. We will summarize
         the results here.}
   
   @para{We are grateful to Collberg, et al. for initiating this
         discussion and making all their data available. This is a
         valuable service based on an enormous amount of manual labor.
         Even if we end up disagreeing with some of their findings,
         we remain deeply appreciative of their service to the
         community by highlighting these important issues.}))

(define review-protocol
  (list

   @para{To participate, clone this repository on GitHub:}
   @centered{@(hyperlink"https://github.com/shriram/repro-in-cs" "https://github.com/shriram/repro-in-cs")}
   @para{You
         will need to do this so that you can edit or add files to your copy of the
         repository and then share them with us.  (Although you can clone the
         repository elsewhere, pull requests are easiest from GitHub;
         please help us keep our workload reasonable.)}

   @para{To avoid language conflicts and complexity, our interface
         will be simple text files. All the files of interest to you
         are in the @tt{data} sub-directory.}
   
   @para{To @emph{dispute} a review, which anyone can do, please
            find the directory corresponding to the paper and create
            a file named @tt{dispute.txt}. In it, explain why
            you are disputing the review. In principle you can also 
            use this to simply communicate some fact about the artifact:
            e.g., there was no artifact available then, but there is
            one now. This puts the fact into the public record but
            would not cause anyone to re-run the evaluation.}
   
   @para{Anyone @emph{other than the authors} is welcome to 
                @emph{reproduce} (in the sense used by Collberg, et al.:
                see section 3 of
                @(hyperlink "measuring-tr.pdf"
                            "their paper (cached copy)"))
            the artifact. When they are done, they make a judgment call about
            whether the artifact passed or failed. If it passed, they write
            their findings in @tt{cleared.txt}. If it failed, they
            write their findings in @tt{problem.txt}. Note that multiple
            people may well check an artifact, so don't erase a previous
            person's review---just append to it. These files should also go
            into the directory corresponding to the paper. Needless to say,
            use these exact names.}
   
   @para{We need a standard for judgment. We believe a useful standard is
         @(hyperlink "http://en.wikipedia.org/wiki/Person_having_ordinary_skill_in_the_art"
                     "PHOSITA"). 
         That is, when an artifact doesn't build or run out of the box, you 
         should make only reasonable (and minimal) changes. If with these it can 
         pass muster, consider clearing it (but indicate precisely what you had to 
         do). If with these it does not, reject it. In particular, even if you were 
         successful, if you had to use ingenuity, then the artifact should be regarded 
         as failing. If in doubt, feel free to discuss on social media. }

   @para{When you are done with your review, commit the files and send us a
         pull request. We will review your request
         and then add it to the repository (and the result will appear on this
         Web page). Note that we are likely to reject a review that violates
         standard norms of discourse, as well as one that appears to be removing
         someone else's review, etc., unless it is actually cleaning up a
         prior mistake.}
   ))

(define review-format
  (list
     @para{Please enter your review using the following format:}
     
     @verbatim{
       Time [in minutes]:
       Platform [OS, libraries, etc.]: 
       Skill level:
       - make, but that's about it
       - I can work around issues like failed dependencies and unset environment variables
       - I can build complex software like GCC and the Linux kernel
       Detailed evaluation:}))

(define threats-to-validity
  (list
   @para{Some threats to the validity of our 
         attempt to validate these results include:}
   
   @itemlist[
     @item{Some artifacts may have changed since the time they were tested by
           Collberg's team.}

      @item{Some authors may have fixed their artifacts after reading the build
            logs on the original site.}

      @item{Different platforms may yield different build issues.}]))