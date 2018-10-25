---
title: "All Women Shortlists Methodology"
bibliography: women.bib
csl: apa.csl
lof: yes
lot: yes
output:
  bookdown::html_document2:
    toc: yes
    toc_depth: 3
    number_sections: true
    keep_md: true
  bookdown::pdf_document2:
    toc: yes
    toc_depth: 3
    number_sections: true
    includes:  
      in_header: preamble.tex
    keep_tex: true
link-citations: yes
editor_options:
  chunk_output_type: console
always_allow_html: yes
fig_caption: true
date: "2018-10-25"
author: "Evan Odell"
---






\clearpage

# Descriptive Statistics

Table \@ref(tab:lab-desc-stats-table) shows the number of Labour MPs elected in each general election from 1997 to 2015, including newly elected MPs (the ``intake''), the number of newly elected MPs from all women shortlists (AWS), and the number of candidates selected through all women shortlists. Data in Table \@ref(tab:lab-desc-stats-table) is from the House of Commons Library [@kelly2016; @audickas2017]. All women shortlists were not used by Labour during the 2001 General Election.

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:lab-desc-stats-table)Labour MPs and Intakes</caption>
 <thead>
  <tr>
   <th style="text-align:right;"> General Election </th>
   <th style="text-align:right;"> Total MPs </th>
   <th style="text-align:right;"> Labour MPs </th>
   <th style="text-align:right;"> Female Labour MPs </th>
   <th style="text-align:right;"> Labour MPs Intake </th>
   <th style="text-align:right;"> Intake Women </th>
   <th style="text-align:right;"> Intake Shortlist </th>
   <th style="text-align:right;"> Nominated Shortlist </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;width: 1.5cm; "> 1997 </td>
   <td style="text-align:right;width: 1cm; "> 659 </td>
   <td style="text-align:right;width: 1.5cm; "> 418 </td>
   <td style="text-align:right;width: 2cm; "> 101 (24%) </td>
   <td style="text-align:right;width: 2cm; "> 177 </td>
   <td style="text-align:right;width: 1.5cm; "> 64 (36%) </td>
   <td style="text-align:right;width: 1.5cm; "> 35 </td>
   <td style="text-align:right;width: 2cm; "> 38 </td>
  </tr>
  <tr>
   <td style="text-align:right;width: 1.5cm; "> 2001 </td>
   <td style="text-align:right;width: 1cm; "> 659 </td>
   <td style="text-align:right;width: 1.5cm; "> 412 </td>
   <td style="text-align:right;width: 2cm; "> 95 (23%) </td>
   <td style="text-align:right;width: 2cm; "> 38 </td>
   <td style="text-align:right;width: 1.5cm; "> 4 (11%) </td>
   <td style="text-align:right;width: 1.5cm; "> 0 </td>
   <td style="text-align:right;width: 2cm; "> 0 </td>
  </tr>
  <tr>
   <td style="text-align:right;width: 1.5cm; "> 2005 </td>
   <td style="text-align:right;width: 1cm; "> 646 </td>
   <td style="text-align:right;width: 1.5cm; "> 355 </td>
   <td style="text-align:right;width: 2cm; "> 98 (28%) </td>
   <td style="text-align:right;width: 2cm; "> 40 </td>
   <td style="text-align:right;width: 1.5cm; "> 26 (65%) </td>
   <td style="text-align:right;width: 1.5cm; "> 23 </td>
   <td style="text-align:right;width: 2cm; "> 30 </td>
  </tr>
  <tr>
   <td style="text-align:right;width: 1.5cm; "> 2010 </td>
   <td style="text-align:right;width: 1cm; "> 650 </td>
   <td style="text-align:right;width: 1.5cm; "> 258 </td>
   <td style="text-align:right;width: 2cm; "> 81 (31%) </td>
   <td style="text-align:right;width: 2cm; "> 64 </td>
   <td style="text-align:right;width: 1.5cm; "> 32 (50%) </td>
   <td style="text-align:right;width: 1.5cm; "> 28 </td>
   <td style="text-align:right;width: 2cm; "> 63 </td>
  </tr>
  <tr>
   <td style="text-align:right;width: 1.5cm; "> 2015 </td>
   <td style="text-align:right;width: 1cm; "> 650 </td>
   <td style="text-align:right;width: 1.5cm; "> 232 </td>
   <td style="text-align:right;width: 2cm; "> 99 (43%) </td>
   <td style="text-align:right;width: 2cm; "> 49 </td>
   <td style="text-align:right;width: 1.5cm; "> 31 (63%) </td>
   <td style="text-align:right;width: 1.5cm; "> 31 </td>
   <td style="text-align:right;width: 2cm; "> 77 </td>
  </tr>
</tbody>
</table>

Table \@ref(tab:speech-stats-table) shows the total size of the dataset in speeches and words by each party, including by gender for each party, and in the case of female Labour MPs, by AWS status. Details on inclusion criteria are given [below](#methodology).

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:speech-stats-table)Number of Speeches and Words in Dataset</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> Speeches </th>
   <th style="text-align:right;"> Words </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> All </td>
   <td style="text-align:right;"> 657,547 </td>
   <td style="text-align:right;"> 239,123,685 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Female </td>
   <td style="text-align:right;"> 149,805 </td>
   <td style="text-align:right;"> 56,589,501 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Male </td>
   <td style="text-align:right;"> 507,742 </td>
   <td style="text-align:right;"> 182,534,184 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> All </td>
   <td style="text-align:right;"> 285,308 </td>
   <td style="text-align:right;"> 96,186,824 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Female </td>
   <td style="text-align:right;"> 48,771 </td>
   <td style="text-align:right;"> 15,779,116 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Male </td>
   <td style="text-align:right;"> 236,537 </td>
   <td style="text-align:right;"> 80,407,708 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> All </td>
   <td style="text-align:right;"> 262,000 </td>
   <td style="text-align:right;"> 99,986,437 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Female </td>
   <td style="text-align:right;"> 84,615 </td>
   <td style="text-align:right;"> 34,159,304 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Non-All Women Shortlists </td>
   <td style="text-align:right;"> 28,653 </td>
   <td style="text-align:right;"> 11,623,184 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> All Women Shortlists </td>
   <td style="text-align:right;"> 55,962 </td>
   <td style="text-align:right;"> 22,536,120 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Male </td>
   <td style="text-align:right;"> 177,385 </td>
   <td style="text-align:right;"> 65,827,133 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> All </td>
   <td style="text-align:right;"> 72,719 </td>
   <td style="text-align:right;"> 28,947,968 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Female </td>
   <td style="text-align:right;"> 7,552 </td>
   <td style="text-align:right;"> 3,232,822 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Male </td>
   <td style="text-align:right;"> 65,167 </td>
   <td style="text-align:right;"> 25,715,146 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> All </td>
   <td style="text-align:right;"> 37,520 </td>
   <td style="text-align:right;"> 14,002,456 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Female </td>
   <td style="text-align:right;"> 8,867 </td>
   <td style="text-align:right;"> 3,418,259 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Male </td>
   <td style="text-align:right;"> 28,653 </td>
   <td style="text-align:right;"> 10,584,197 </td>
  </tr>
</tbody>
</table>


# Methodology

Previous research on gender differences in political speech patterns has focused on differences between male and female politicians [@yu2014] or on variations in Hilary Clinton's speech patterns [@jones2016; @bligh2010]. This paper focuses on differences in speech patterns between female Labour MPs nominated through All Women Shortlists (AWS) and female Labour MPs nominated through open shortlists. We examined differences in speaking styles using the `Linguistic Inquiry and Word Count 2015` (LIWC) dictionary [@pennebaker2015] and the `spaCy` [@honnibal2017] Parts-of-Speech (POS) tagger. We examined differences in the topics discussed by AWS and non-AWS MPs, using ${\chi}^2$ tests for individual words and for bigrams. We trained a Naive Bayes classifier to distinguish AWS and non-AWS speeches. We used structured topic models (STM) to identify the topics discussed by AWS and non-AWS MPs.

To account for the possible effects of age, parliamentary experience and cohort, and in order to compare women selected through all women shortlists to women who were not (but who theoretically had the opportunity to contest all-women shortlists), our analysis is been restricted only to Labour MPs first elected to the House of Commons in the 1997 General Election, up to but excluding the 2017 General Election. Comparisons between MPs of different parties are also restricted to MPs first elected in the 1997 General Election, and before the 2017 General Election. Speeches made by the Speaker, including Deputy Speakers, were also excluded. Words contained in parentheses were removed, as they are added by Hansard to provide additional information not actually spoken by the MP.[^1] Speeches and data on MPs' gender and party affiliation are from a previously assembled dataset [@odell2018]. Information on candidates selected through all women shortlists is from the House of Commons Library [@kelly2016]. Unsuccessful General Election candidates selected through all women shortlists who were subsequently elected in a byelection are classified as having been selected on an all women shortlist, regardless of the selection process for that byelection. Speeches made by MPs while suspended from the Labour party where classified the same as if they had not been suspended. The dataset includes 408 different Labour MPs, 167 female MPs, 119 elected from All Women Shortlists and 48 elected from open shortlists, along with 241 male MPs.

# Results

## Linguistic Inquiry and Word Count

Word classification used the `Linguistic Inquiry and Word Count 2015` (LIWC) dictionary [@pennebaker2015] and tokenising tools from the `Quanteda` `R` package [@benoit2018]. Word counts and words-per-sentence, and calculations for determining grade level [@kincaid1975] were produced using `stringi` [@gagolewski2018], an `R` wrapper to the ICU regex library.

Following research by @yu2014 and @newman2008 on gender differences in language, we focused on the following LIWC categories to compare MPs' speeches:

* All Pronouns (pronoun)<!-- Feminine: -->
* First person singular pronouns (i) <!-- Feminine: -->
* First person plural pronouns (we)<!-- Masculine: -->
* Verbs (verb)<!-- Feminine: -->
* Auxiliary verbs (auxverb) <!-- Feminine: -->
* Social processes (social) <!-- Feminine: -->
* Positive emotions (posemo) <!-- Feminine: -->
* Negative emotions (negemo) <!-- Feminine: -->
* Tentative words (tentat)<!-- Feminine: -->
* Articles (article) <!-- Masculine: -->
* Prepositions (preps) <!-- Masculine: -->
* Anger words (anger)<!-- Masculine: -->
* Swear words (swear)<!-- Masculine: -->
* Cognitive processes (cogproc)<!-- Masculine: -->
* Words longer than six letters (Sixltr)<!-- Masculine: -->

We also included mean words-per-sentence (WPS), total speach word count (WC) and Flesch–Kincaid grade level (FK) [@kincaid1975], calculated using the `Quanteda` [@benoit2018] and `stringi` [@gagolewski2018] `R` packages.

### Women vs Men

Table \@ref(tab:gender-effect-sizes-table) shows there are no categories where gender differences meet the effect size threshold of $|0.2|$ suggested by Cohen [-@cohen1988, 25--26] to indicate a small effect. 4 categories -- words with more than six letters, prepositions, words-per-sentence and Flesh-Kincaid grade level -- met or exceeded the $|0.1|$ threshold suggested by @newman2008.

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:gender-effect-sizes-table)Effect Sizes for Male and Female Labour MPs</caption>
 <thead>
  <tr>
   <th style="text-align:left;">  </th>
   <th style="text-align:right;"> Women Mean </th>
   <th style="text-align:right;"> Women SD </th>
   <th style="text-align:right;"> Men Mean </th>
   <th style="text-align:right;"> Men SD </th>
   <th style="text-align:right;"> Cohen's d </th>
   <th style="text-align:left;"> Magnitude </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> All Pronouns </td>
   <td style="text-align:right;"> 10.07 </td>
   <td style="text-align:right;"> 4.60 </td>
   <td style="text-align:right;"> 10.15 </td>
   <td style="text-align:right;"> 4.99 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> First person singular pronouns </td>
   <td style="text-align:right;"> 1.89 </td>
   <td style="text-align:right;"> 2.41 </td>
   <td style="text-align:right;"> 2.02 </td>
   <td style="text-align:right;"> 2.55 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> First person plural pronouns </td>
   <td style="text-align:right;"> 0.98 </td>
   <td style="text-align:right;"> 1.42 </td>
   <td style="text-align:right;"> 0.99 </td>
   <td style="text-align:right;"> 1.51 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Verbs </td>
   <td style="text-align:right;"> 12.82 </td>
   <td style="text-align:right;"> 5.00 </td>
   <td style="text-align:right;"> 12.67 </td>
   <td style="text-align:right;"> 5.35 </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Auxiliary verbs </td>
   <td style="text-align:right;"> 7.91 </td>
   <td style="text-align:right;"> 3.45 </td>
   <td style="text-align:right;"> 7.93 </td>
   <td style="text-align:right;"> 3.69 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Social processes </td>
   <td style="text-align:right;"> 8.46 </td>
   <td style="text-align:right;"> 4.81 </td>
   <td style="text-align:right;"> 8.16 </td>
   <td style="text-align:right;"> 5.11 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Positive emotions </td>
   <td style="text-align:right;"> 2.73 </td>
   <td style="text-align:right;"> 2.49 </td>
   <td style="text-align:right;"> 2.57 </td>
   <td style="text-align:right;"> 2.54 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Negative emotions </td>
   <td style="text-align:right;"> 1.15 </td>
   <td style="text-align:right;"> 1.69 </td>
   <td style="text-align:right;"> 1.07 </td>
   <td style="text-align:right;"> 1.78 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tentative words </td>
   <td style="text-align:right;"> 1.48 </td>
   <td style="text-align:right;"> 1.74 </td>
   <td style="text-align:right;"> 1.58 </td>
   <td style="text-align:right;"> 1.90 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> More than six letters </td>
   <td style="text-align:right;"> 10.62 </td>
   <td style="text-align:right;"> 3.67 </td>
   <td style="text-align:right;"> 10.26 </td>
   <td style="text-align:right;"> 3.92 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Articles </td>
   <td style="text-align:right;"> 7.64 </td>
   <td style="text-align:right;"> 3.30 </td>
   <td style="text-align:right;"> 7.96 </td>
   <td style="text-align:right;"> 3.55 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Prepositions </td>
   <td style="text-align:right;"> 12.58 </td>
   <td style="text-align:right;"> 4.41 </td>
   <td style="text-align:right;"> 12.14 </td>
   <td style="text-align:right;"> 4.73 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anger words </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.83 </td>
   <td style="text-align:right;"> 0.24 </td>
   <td style="text-align:right;"> 0.79 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Swear words </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cognitive processes </td>
   <td style="text-align:right;"> 8.68 </td>
   <td style="text-align:right;"> 4.83 </td>
   <td style="text-align:right;"> 8.82 </td>
   <td style="text-align:right;"> 5.15 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Words per Sentence </td>
   <td style="text-align:right;"> 43.99 </td>
   <td style="text-align:right;"> 19.92 </td>
   <td style="text-align:right;"> 41.43 </td>
   <td style="text-align:right;"> 20.30 </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Total Word Count </td>
   <td style="text-align:right;"> 402.72 </td>
   <td style="text-align:right;"> 691.10 </td>
   <td style="text-align:right;"> 370.13 </td>
   <td style="text-align:right;"> 647.25 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Flesh-Kincaid Grade Level </td>
   <td style="text-align:right;"> 10.97 </td>
   <td style="text-align:right;"> 7.77 </td>
   <td style="text-align:right;"> 9.91 </td>
   <td style="text-align:right;"> 7.96 </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
</tbody>
</table>



### Shortlists vs Non-Shortlists



Figure \@ref(fig:sl-key-y-since-start) shows changes in the occurrences of selected LIWC terms, words-per-sentence, total word count and Flesch–Kincaid grade level, over the course of an MP's career, as measured since the time an MP was first elected. There do not appear to be any notable changes in speaking style over the course of female Labour MPs' careers. Figure \@ref(fig:sl-key-date) shows changes in the occurrences of the same selected terms from 1997--2017. As in Figure \@ref(fig:sl-key-y-since-start), there do not appear to be any meaningful trends in the use of the selected terms over time.

There are no categories among female Labour MPs by selection process meeting the $|0.2|$ threshold, as shown in Table \@ref(tab:sl-effect-sizes). Only one category - first person plural pronouns, _d_=0.19 -- exceeded $|0.1|$.

<div class="figure">
<img src="methodology_files/figure-html/sl-key-y-since-start-1.png" alt="Occurrence of selected LIWC terms, by time as MP"  />
<p class="caption">(\#fig:sl-key-y-since-start)Occurrence of selected LIWC terms, by time as MP</p>
</div>


<div class="figure">
<img src="methodology_files/figure-html/sl-key-date-1.png" alt="Occurrence of selected LIWC terms, by date"  />
<p class="caption">(\#fig:sl-key-date)Occurrence of selected LIWC terms, by date</p>
</div>


<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:sl-effect-sizes)Effect Sizes for Female Labour MPs by selection process</caption>
 <thead>
  <tr>
   <th style="text-align:left;">  </th>
   <th style="text-align:right;"> All Women Shortlists Mean </th>
   <th style="text-align:right;"> All Women Shortlists SD </th>
   <th style="text-align:right;"> Open Shortlists Mean </th>
   <th style="text-align:right;"> Open Shortlists SD </th>
   <th style="text-align:right;"> Cohen's d </th>
   <th style="text-align:left;"> Magnitude </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> All Pronouns </td>
   <td style="text-align:right;"> 10.01 </td>
   <td style="text-align:right;"> 4.66 </td>
   <td style="text-align:right;"> 10.19 </td>
   <td style="text-align:right;"> 4.47 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> First person singular pronouns </td>
   <td style="text-align:right;"> 1.86 </td>
   <td style="text-align:right;"> 2.41 </td>
   <td style="text-align:right;"> 1.95 </td>
   <td style="text-align:right;"> 2.42 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> First person plural pronouns </td>
   <td style="text-align:right;"> 0.88 </td>
   <td style="text-align:right;"> 1.36 </td>
   <td style="text-align:right;"> 1.16 </td>
   <td style="text-align:right;"> 1.51 </td>
   <td style="text-align:right;"> -0.19 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Verbs </td>
   <td style="text-align:right;"> 12.88 </td>
   <td style="text-align:right;"> 5.10 </td>
   <td style="text-align:right;"> 12.69 </td>
   <td style="text-align:right;"> 4.80 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Auxiliary verbs </td>
   <td style="text-align:right;"> 7.94 </td>
   <td style="text-align:right;"> 3.49 </td>
   <td style="text-align:right;"> 7.86 </td>
   <td style="text-align:right;"> 3.38 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Social processes </td>
   <td style="text-align:right;"> 8.46 </td>
   <td style="text-align:right;"> 4.93 </td>
   <td style="text-align:right;"> 8.44 </td>
   <td style="text-align:right;"> 4.58 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Positive emotions </td>
   <td style="text-align:right;"> 2.69 </td>
   <td style="text-align:right;"> 2.52 </td>
   <td style="text-align:right;"> 2.81 </td>
   <td style="text-align:right;"> 2.42 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Negative emotions </td>
   <td style="text-align:right;"> 1.17 </td>
   <td style="text-align:right;"> 1.69 </td>
   <td style="text-align:right;"> 1.13 </td>
   <td style="text-align:right;"> 1.68 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tentative words </td>
   <td style="text-align:right;"> 1.48 </td>
   <td style="text-align:right;"> 1.75 </td>
   <td style="text-align:right;"> 1.49 </td>
   <td style="text-align:right;"> 1.73 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> More than six letters </td>
   <td style="text-align:right;"> 10.56 </td>
   <td style="text-align:right;"> 3.72 </td>
   <td style="text-align:right;"> 10.74 </td>
   <td style="text-align:right;"> 3.56 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Articles </td>
   <td style="text-align:right;"> 7.69 </td>
   <td style="text-align:right;"> 3.38 </td>
   <td style="text-align:right;"> 7.55 </td>
   <td style="text-align:right;"> 3.14 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Prepositions </td>
   <td style="text-align:right;"> 12.55 </td>
   <td style="text-align:right;"> 4.54 </td>
   <td style="text-align:right;"> 12.63 </td>
   <td style="text-align:right;"> 4.14 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anger words </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.79 </td>
   <td style="text-align:right;"> 0.24 </td>
   <td style="text-align:right;"> 0.91 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Swear words </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cognitive processes </td>
   <td style="text-align:right;"> 8.59 </td>
   <td style="text-align:right;"> 4.90 </td>
   <td style="text-align:right;"> 8.85 </td>
   <td style="text-align:right;"> 4.69 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Words per Sentence </td>
   <td style="text-align:right;"> 44.39 </td>
   <td style="text-align:right;"> 20.69 </td>
   <td style="text-align:right;"> 43.21 </td>
   <td style="text-align:right;"> 18.31 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Total Word Count </td>
   <td style="text-align:right;"> 401.70 </td>
   <td style="text-align:right;"> 704.15 </td>
   <td style="text-align:right;"> 404.73 </td>
   <td style="text-align:right;"> 664.87 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Flesh-Kincaid Grade Level </td>
   <td style="text-align:right;"> 11.13 </td>
   <td style="text-align:right;"> 8.06 </td>
   <td style="text-align:right;"> 10.64 </td>
   <td style="text-align:right;"> 7.15 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
</tbody>
</table>


### Conservatives vs Labour

As shown in Table \@ref(tab:tory-labour-effect-sizes-table,), there are no categories with effect sizes exceeding $|0.2|$ between Labour and Conservative MPs, and only one (first person plural pronouns) exceeding $|0.1|$.


<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:tory-labour-effect-sizes-table)Effect Sizes for All Labour and Conservative MPs</caption>
 <thead>
  <tr>
   <th style="text-align:left;">  </th>
   <th style="text-align:right;"> Labour Mean </th>
   <th style="text-align:right;"> Labour SD </th>
   <th style="text-align:right;"> Conservatives Mean </th>
   <th style="text-align:right;"> Conservatives SD </th>
   <th style="text-align:right;"> Cohen's <em>d</em> </th>
   <th style="text-align:left;"> Magnitude </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> All Pronouns </td>
   <td style="text-align:right;"> 10.12 </td>
   <td style="text-align:right;"> 4.87 </td>
   <td style="text-align:right;"> 10.61 </td>
   <td style="text-align:right;"> 4.84 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> First person singular pronouns </td>
   <td style="text-align:right;"> 1.98 </td>
   <td style="text-align:right;"> 2.51 </td>
   <td style="text-align:right;"> 2.14 </td>
   <td style="text-align:right;"> 2.56 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> First person plural pronouns </td>
   <td style="text-align:right;"> 0.98 </td>
   <td style="text-align:right;"> 1.48 </td>
   <td style="text-align:right;"> 1.22 </td>
   <td style="text-align:right;"> 1.70 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Verbs </td>
   <td style="text-align:right;"> 12.72 </td>
   <td style="text-align:right;"> 5.24 </td>
   <td style="text-align:right;"> 12.92 </td>
   <td style="text-align:right;"> 5.14 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Auxiliary verbs </td>
   <td style="text-align:right;"> 7.93 </td>
   <td style="text-align:right;"> 3.61 </td>
   <td style="text-align:right;"> 8.16 </td>
   <td style="text-align:right;"> 3.58 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Social processes </td>
   <td style="text-align:right;"> 8.26 </td>
   <td style="text-align:right;"> 5.02 </td>
   <td style="text-align:right;"> 8.11 </td>
   <td style="text-align:right;"> 4.80 </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Positive emotions </td>
   <td style="text-align:right;"> 2.63 </td>
   <td style="text-align:right;"> 2.52 </td>
   <td style="text-align:right;"> 2.85 </td>
   <td style="text-align:right;"> 2.66 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Negative emotions </td>
   <td style="text-align:right;"> 1.10 </td>
   <td style="text-align:right;"> 1.75 </td>
   <td style="text-align:right;"> 1.04 </td>
   <td style="text-align:right;"> 1.79 </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tentative words </td>
   <td style="text-align:right;"> 1.55 </td>
   <td style="text-align:right;"> 1.85 </td>
   <td style="text-align:right;"> 1.57 </td>
   <td style="text-align:right;"> 1.88 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> More than six letters </td>
   <td style="text-align:right;"> 10.38 </td>
   <td style="text-align:right;"> 3.84 </td>
   <td style="text-align:right;"> 10.31 </td>
   <td style="text-align:right;"> 3.75 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Articles </td>
   <td style="text-align:right;"> 7.86 </td>
   <td style="text-align:right;"> 3.47 </td>
   <td style="text-align:right;"> 7.81 </td>
   <td style="text-align:right;"> 3.45 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Prepositions </td>
   <td style="text-align:right;"> 12.28 </td>
   <td style="text-align:right;"> 4.63 </td>
   <td style="text-align:right;"> 12.35 </td>
   <td style="text-align:right;"> 4.49 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anger words </td>
   <td style="text-align:right;"> 0.24 </td>
   <td style="text-align:right;"> 0.80 </td>
   <td style="text-align:right;"> 0.24 </td>
   <td style="text-align:right;"> 0.82 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Swear words </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cognitive processes </td>
   <td style="text-align:right;"> 8.77 </td>
   <td style="text-align:right;"> 5.05 </td>
   <td style="text-align:right;"> 8.85 </td>
   <td style="text-align:right;"> 5.06 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Words per Sentence </td>
   <td style="text-align:right;"> 42.26 </td>
   <td style="text-align:right;"> 20.22 </td>
   <td style="text-align:right;"> 43.07 </td>
   <td style="text-align:right;"> 20.39 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Total Word Count </td>
   <td style="text-align:right;"> 380.64 </td>
   <td style="text-align:right;"> 661.91 </td>
   <td style="text-align:right;"> 336.23 </td>
   <td style="text-align:right;"> 594.06 </td>
   <td style="text-align:right;"> -0.07 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Flesh-Kincaid Grade Level </td>
   <td style="text-align:right;"> 10.25 </td>
   <td style="text-align:right;"> 7.91 </td>
   <td style="text-align:right;"> 10.54 </td>
   <td style="text-align:right;"> 7.99 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
</tbody>
</table>




### All MPs Gender Differences

There are no categories with effect sizes exceeding $|0.2|$ when comparing all male and female MPs elected from 1997 onwards. There is only one category, "Articles", with an effect size of 0.11, greater than the $|0.1|$ threshold suggested by @newman2008.

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:all-party-effect-sizes)Effect Sizes for Male and Female MPs, All Parties</caption>
 <thead>
  <tr>
   <th style="text-align:left;">  </th>
   <th style="text-align:right;"> Women Mean </th>
   <th style="text-align:right;"> Women SD </th>
   <th style="text-align:right;"> Men Mean </th>
   <th style="text-align:right;"> Men SD </th>
   <th style="text-align:right;"> Cohen's d </th>
   <th style="text-align:left;"> Magnitude </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> All Pronouns </td>
   <td style="text-align:right;"> 10.31 </td>
   <td style="text-align:right;"> 4.65 </td>
   <td style="text-align:right;"> 10.26 </td>
   <td style="text-align:right;"> 4.90 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> First person singular pronouns </td>
   <td style="text-align:right;"> 1.99 </td>
   <td style="text-align:right;"> 2.45 </td>
   <td style="text-align:right;"> 2.00 </td>
   <td style="text-align:right;"> 2.52 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> First person plural pronouns </td>
   <td style="text-align:right;"> 1.11 </td>
   <td style="text-align:right;"> 1.57 </td>
   <td style="text-align:right;"> 1.08 </td>
   <td style="text-align:right;"> 1.59 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Verbs </td>
   <td style="text-align:right;"> 12.89 </td>
   <td style="text-align:right;"> 4.98 </td>
   <td style="text-align:right;"> 12.80 </td>
   <td style="text-align:right;"> 5.26 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Auxiliary verbs </td>
   <td style="text-align:right;"> 8.01 </td>
   <td style="text-align:right;"> 3.45 </td>
   <td style="text-align:right;"> 8.08 </td>
   <td style="text-align:right;"> 3.64 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Social processes </td>
   <td style="text-align:right;"> 8.44 </td>
   <td style="text-align:right;"> 4.77 </td>
   <td style="text-align:right;"> 7.99 </td>
   <td style="text-align:right;"> 4.92 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Positive emotions </td>
   <td style="text-align:right;"> 2.84 </td>
   <td style="text-align:right;"> 2.53 </td>
   <td style="text-align:right;"> 2.70 </td>
   <td style="text-align:right;"> 2.58 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Negative emotions </td>
   <td style="text-align:right;"> 1.10 </td>
   <td style="text-align:right;"> 1.65 </td>
   <td style="text-align:right;"> 1.07 </td>
   <td style="text-align:right;"> 1.78 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tentative words </td>
   <td style="text-align:right;"> 1.47 </td>
   <td style="text-align:right;"> 1.73 </td>
   <td style="text-align:right;"> 1.61 </td>
   <td style="text-align:right;"> 1.91 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> More than six letters </td>
   <td style="text-align:right;"> 10.57 </td>
   <td style="text-align:right;"> 3.66 </td>
   <td style="text-align:right;"> 10.34 </td>
   <td style="text-align:right;"> 3.83 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Articles </td>
   <td style="text-align:right;"> 7.63 </td>
   <td style="text-align:right;"> 3.30 </td>
   <td style="text-align:right;"> 8.00 </td>
   <td style="text-align:right;"> 3.51 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Prepositions </td>
   <td style="text-align:right;"> 12.59 </td>
   <td style="text-align:right;"> 4.36 </td>
   <td style="text-align:right;"> 12.22 </td>
   <td style="text-align:right;"> 4.61 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Anger words </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.79 </td>
   <td style="text-align:right;"> 0.25 </td>
   <td style="text-align:right;"> 0.82 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Swear words </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cognitive processes </td>
   <td style="text-align:right;"> 8.68 </td>
   <td style="text-align:right;"> 4.80 </td>
   <td style="text-align:right;"> 8.93 </td>
   <td style="text-align:right;"> 5.12 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Words per Sentence </td>
   <td style="text-align:right;"> 44.00 </td>
   <td style="text-align:right;"> 20.02 </td>
   <td style="text-align:right;"> 42.69 </td>
   <td style="text-align:right;"> 20.65 </td>
   <td style="text-align:right;"> -0.07 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Total Word Count </td>
   <td style="text-align:right;"> 376.81 </td>
   <td style="text-align:right;"> 648.62 </td>
   <td style="text-align:right;"> 358.56 </td>
   <td style="text-align:right;"> 624.84 </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Flesh-Kincaid Grade Level </td>
   <td style="text-align:right;"> 10.95 </td>
   <td style="text-align:right;"> 7.82 </td>
   <td style="text-align:right;"> 10.43 </td>
   <td style="text-align:right;"> 8.08 </td>
   <td style="text-align:right;"> -0.07 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
</tbody>
</table>


## POS Analysis







Part-of-speech (POS) tagging was done using the `spaCy` library [@honnibal2017] and the `spacyr` package [@benoit2018a]. There is one small gender difference (_d_ = -0.22) in the use of plural nouns, which make up  5.86% of the words used by female Labour MPs, compared to  5.04% of words spoken by male Labour MPs  (Table \@ref(tab:pos-gender-table)). 

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:pos-gender-table)Part-of-Speech Effect Sizes for Male and Female Labour MPs</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Word Type </th>
   <th style="text-align:right;"> Women Mean </th>
   <th style="text-align:right;"> Women SD </th>
   <th style="text-align:right;"> Men Mean </th>
   <th style="text-align:right;"> Men SD </th>
   <th style="text-align:right;"> Cohen's d </th>
   <th style="text-align:left;"> Magnitude </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> All Nouns </td>
   <td style="text-align:right;"> 22.17 </td>
   <td style="text-align:right;"> 9.56 </td>
   <td style="text-align:right;"> 21.67 </td>
   <td style="text-align:right;"> 10.92 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Plural Nouns </td>
   <td style="text-align:right;"> 5.86 </td>
   <td style="text-align:right;"> 3.71 </td>
   <td style="text-align:right;"> 5.04 </td>
   <td style="text-align:right;"> 3.79 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:left;"> small </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Singular Nouns </td>
   <td style="text-align:right;"> 15.61 </td>
   <td style="text-align:right;"> 9.81 </td>
   <td style="text-align:right;"> 16.01 </td>
   <td style="text-align:right;"> 11.16 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Adjectives </td>
   <td style="text-align:right;"> 9.58 </td>
   <td style="text-align:right;"> 4.77 </td>
   <td style="text-align:right;"> 9.28 </td>
   <td style="text-align:right;"> 5.29 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Adverbs </td>
   <td style="text-align:right;"> 4.91 </td>
   <td style="text-align:right;"> 4.25 </td>
   <td style="text-align:right;"> 5.06 </td>
   <td style="text-align:right;"> 4.91 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Verbs </td>
   <td style="text-align:right;"> 20.97 </td>
   <td style="text-align:right;"> 9.52 </td>
   <td style="text-align:right;"> 20.81 </td>
   <td style="text-align:right;"> 10.28 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
</tbody>
</table>


As with LIWC, there are no categories where _d_ >= $|0.2|$ when comparing female Labour MPs by selection process, and only one category -- plural nouns -- with an effect size of _d_ >= $|0.1|$ (Table \@ref(tab:pos-sl-table)).

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:pos-sl-table)Part-of-Speech Effect Sizes for AWS and non-AWS Labour MPs</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Word Type </th>
   <th style="text-align:right;"> All Women Shortlists Mean </th>
   <th style="text-align:right;"> All Women Shortlists SD </th>
   <th style="text-align:right;"> Open Shorlists Mean </th>
   <th style="text-align:right;"> Open Shorlists SD </th>
   <th style="text-align:right;"> Cohen's d </th>
   <th style="text-align:left;"> Magnitude </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> All Nouns </td>
   <td style="text-align:right;"> 22.16 </td>
   <td style="text-align:right;"> 8.72 </td>
   <td style="text-align:right;"> 22.18 </td>
   <td style="text-align:right;"> 9.97 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Plural Nouns </td>
   <td style="text-align:right;"> 6.03 </td>
   <td style="text-align:right;"> 3.59 </td>
   <td style="text-align:right;"> 5.77 </td>
   <td style="text-align:right;"> 3.76 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Singular Nouns </td>
   <td style="text-align:right;"> 15.50 </td>
   <td style="text-align:right;"> 8.93 </td>
   <td style="text-align:right;"> 15.67 </td>
   <td style="text-align:right;"> 10.23 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Adjectives </td>
   <td style="text-align:right;"> 9.83 </td>
   <td style="text-align:right;"> 4.58 </td>
   <td style="text-align:right;"> 9.45 </td>
   <td style="text-align:right;"> 4.86 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Adverbs </td>
   <td style="text-align:right;"> 4.95 </td>
   <td style="text-align:right;"> 3.76 </td>
   <td style="text-align:right;"> 4.89 </td>
   <td style="text-align:right;"> 4.49 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Verbs </td>
   <td style="text-align:right;"> 20.92 </td>
   <td style="text-align:right;"> 9.02 </td>
   <td style="text-align:right;"> 21.00 </td>
   <td style="text-align:right;"> 9.77 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:left;"> negligible </td>
  </tr>
</tbody>
</table>



## Keyness

We calculated the keyness of words to identify gender differences in the choices of topics raised and terminology used by both male and female Labour MPs, and by short-list and non-shortlist female Labour MPs. We have also calculated keyness between Labour and Conservative MPs for the purposes of illustration. All keyness figures include the 25 most disproportionately common words among each group, as determined by ${\chi}^2$ tests using `quanteda` [@benoit2018].

### Labour Men vs Women

Keyness -- a linguistic measure of the frequency of different words in two groups of texts -- reveals clear gender differences in the most disproportionately common words used by female and male Labour MPs, illustrated in Figure \@ref(fig:gender-keyness-plot).

Unsurprisingly, despite male MPs saying almost twice as many words (65,827,133 vs 34,159,304) as their female colleagues, female Labour MPs were more than two-and-a-half (2.61) times as likely to say "women". They were also much more likely to use "women's" and "woman" in parliamentary debate. Female Labour MPs also appear much more likely to discuss "children", "people", "care", "families", "home", "parents", "work" and social policy areas such as "services", "disabled [people]" and "housing" than their male colleagues. Male MPs were more likely to refer to military topics ("Iraq", "nuclear"), and to parliamentary process and protocol  -- "question", "political", "conservative", "electoral", "house", "party", "argument" "liberal" and "point" are far more common in speeches by male Labour MPs than by female ones. This could suggest that male Labour MPs are more comfortable using the traditional language of House of Commons debate, and are more concerned with the rules, procedures and processes of the parliamentary system than their female colleagues.

<div class="figure">
<img src="methodology_files/figure-html/gender-keyness-plot-1.png" alt="Keyness between Labour MPs, by Gender"  />
<p class="caption">(\#fig:gender-keyness-plot)Keyness between Labour MPs, by Gender</p>
</div>

### Shortlists vs Non-Shortlists

Keyness differences by selection process (Figure \@ref(fig:sl-keyness)) are not as obviously stereotypical. Nonetheless, the most common words amongst AWS MPs included "carers", "disabled", "bedroom" and "sen" (Special Educational Needs). Also of note is AWS MPs making more references to their "constituency" and its "constituents", suggesting that AWS MPs may draw more heavily on the fact they were elected by their constituents as a source political legitimacy, or are more likely to illustrate a point with an example from their constitutency, compared to non-AWS MPs.



<div class="figure">
<img src="methodology_files/figure-html/sl-keyness-1.png" alt="Keyness between Female Labour MPs, by Selection Process"  />
<p class="caption">(\#fig:sl-keyness)Keyness between Female Labour MPs, by Selection Process</p>
</div>

### Labour vs Conservative

The keyness differences (Figure \@ref(fig:lab-con-keyness)) between Labour and Conservative MPs are much greater than gender or AWS differences within Labour. The very high use of "Lady" by Conservative MPs is reflective of the greater proportion of female MPs in other parties, as it is often used to refer to comments by other members of the house. It may also represent a greater use of traditional house decorum by Conservative MPs.

<div class="figure">
<img src="methodology_files/figure-html/lab-con-keyness-1.png" alt="Keyness between Labour and Conservative MPs"  />
<p class="caption">(\#fig:lab-con-keyness)Keyness between Labour and Conservative MPs</p>
</div>

## Bigrams

We created bigrams of all first person plural and singular pronouns for female Labour MPs (Figure \@ref(fig:bigrams-sl-keyness)). As above, AWS MPs are far more likely to make references to their constituency or their constituents, and the use of bigrams confirms these references are to their specific constituency/constituents, rather than those of other MPs, or constituencies in general.

<div class="figure">
<img src="methodology_files/figure-html/bigrams-sl-keyness-1.png" alt="Bigram Keyness in Female Labour MPs by Selection Process"  />
<p class="caption">(\#fig:bigrams-sl-keyness)Bigram Keyness in Female Labour MPs by Selection Process</p>
</div>

## Naive Bayes classification

We trained a Naive Bayes classifier with document-frequency priors and a multinomial distribution to predict the gender of speakers when given speeches by all Labour MPs in our dataset, and the selection process when only given female Labour MPs. The accuracy of both models were roughly equivalent, 70.67% accuracy when predicting gender and 71.22% when predicting shortlists. By contrast, the classifier could distinguish between Labour and Conservative speeches with 74.23% accuracy. 

## Topic Models

Using topic models to classify text is widely used in social sciences [@grimmer2013], as, when combined with the large volume of plain text data available, it allows for a rapid and consistent method of analysis . Topic modelling and other statistic methods of textual analysis are not a substitute for reading the texts themselves, but can augment other analysis or -- as in this case -- analyse and classify larger amounts of text than would be feasible using human coders [@grimmer2013]. Topic models classify a series of documents (in this case individual speeches) into one of a given number of topics, identifying terms that are common in some documents but rare in others. When developing topic models, there is a trade-off between high precision in the classification of each document with broader topics when using smaller numbers of topics, or lower precision in individual speech classification with more finely-grained topics when using larger numbers of topics. @grimmer2013 also highlight the importance of validating unsurpervised topic models when applied to new sets of texts, which we have done [below](#Manual Validation).

The R package `stm` [@roberts2018] implements a structured topic model (STM) [@roberts2016; @arora2013]. An STM incorporates covariates into the topic classification algorithm, creating possibilities for hypothesis testing. This differs from traditional topic modelling methods using latent variables to identify topics [e.g. with latent Dirichlet allocation @blei2003], and then comparing proportions of each topic to one or more external variables. STM allows us to incorporate the variables we are interested in to the topic model itself using a generalised linear model; i.e. the proportion of speechs classified as belonging to each topic can vary as a function of the AWS and gender variables.

We incorporated the AWS status of speakers and their gender as prevalence covariates into our topic model. 

We created six topic models with different numbers of topics (_K_). We created models with 30, 45, 60, 80 and 100 topics, and used a topic selection algorithm developed by @lee2014c, implemented in the `stm` package [@roberts2018], which resulted in _K_ = 66. Figure \@ref(fig:topic-model-selection-plot) shows, clockwise from the top-left, the exclusivity score, held out likelihood with 50% of documents held out, the multinomial dispersion of the STM residuals [@taddy2012], semantic coherence [@mimno2011], and the lower bound of each topic model.

<div class="figure">
<img src="methodology_files/figure-html/topic-model-selection-plot-1.png" alt="Topic Model Selection"  />
<p class="caption">(\#fig:topic-model-selection-plot)Topic Model Selection</p>
</div>

As seen in Figure \@ref(fig:topic-model-selection-plot), the _K_ = 66 result appears to produce the best result, a topic model with 66 topics, across 251,072 speeches with a dictionary of 241,625 words. All models were created using the "spectral" method developed by @arora2013, implemented in the `stm` package by @roberts2018. 

Figure \@ref(fig:stm-network-graph) is a Fruchterman-Reingold force-directed diagram [@fruchterman1991] of correlations between different topics. Larger vertices indicate more common topics (amongst both male and female Labour MPs), and the colour scale indicates the proportion of speeches classed in that topic made by AWS and non-AWS female Labour MPs, respectively. Edges indicate positive correlations between the two linked topics.

<div class="figure">
<img src="methodology_files/figure-html/stm-network-graph-1.png" alt="Fruchterman-Reingold plot of Topic Network"  />
<p class="caption">(\#fig:stm-network-graph)Fruchterman-Reingold plot of Topic Network</p>
</div>

The `stm` package includes the `estimateEffect` function, which creates a regression model (Table \@ref(tab:estimate-table-k0)) using individual documents (speeches) as observations, with the proportion of a each document fitting each topic as the dependent variable and model covariates (AWS status and gender) as independent variables. The intercept in this model is all speeches by male Labour MPs.

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:estimate-table-k0)Topic Estimates</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Topic </th>
   <th style="text-align:right;"> Variables </th>
   <th style="text-align:right;"> Estimate </th>
   <th style="text-align:right;"> Standard Error </th>
   <th style="text-align:right;"> t value </th>
   <th style="text-align:left;"> Pr(&gt;|t|) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (1) Employment &amp; unions </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0120876 </td>
   <td style="text-align:right;"> 0.0001174 </td>
   <td style="text-align:right;"> 102.9260682 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0003803 </td>
   <td style="text-align:right;"> 0.0003152 </td>
   <td style="text-align:right;"> -1.2065752 </td>
   <td style="text-align:left;"> 0.23 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0013422 </td>
   <td style="text-align:right;"> 0.0002469 </td>
   <td style="text-align:right;"> -5.4356489 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (2) Legal system </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0167070 </td>
   <td style="text-align:right;"> 0.0001799 </td>
   <td style="text-align:right;"> 92.8879625 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0069633 </td>
   <td style="text-align:right;"> 0.0005420 </td>
   <td style="text-align:right;"> 12.8478005 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0033117 </td>
   <td style="text-align:right;"> 0.0003294 </td>
   <td style="text-align:right;"> -10.0522404 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (3) Roads </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0116641 </td>
   <td style="text-align:right;"> 0.0001528 </td>
   <td style="text-align:right;"> 76.3363798 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0014904 </td>
   <td style="text-align:right;"> 0.0004076 </td>
   <td style="text-align:right;"> -3.6565297 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0019510 </td>
   <td style="text-align:right;"> 0.0002985 </td>
   <td style="text-align:right;"> -6.5353976 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (4) Housing </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0112831 </td>
   <td style="text-align:right;"> 0.0001695 </td>
   <td style="text-align:right;"> 66.5557902 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0044551 </td>
   <td style="text-align:right;"> 0.0004848 </td>
   <td style="text-align:right;"> 9.1888971 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0060400 </td>
   <td style="text-align:right;"> 0.0003759 </td>
   <td style="text-align:right;"> 16.0665819 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (5) Police, firefighters &amp; prison </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0140703 </td>
   <td style="text-align:right;"> 0.0001748 </td>
   <td style="text-align:right;"> 80.5013037 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0032531 </td>
   <td style="text-align:right;"> 0.0005221 </td>
   <td style="text-align:right;"> 6.2303354 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0003190 </td>
   <td style="text-align:right;"> 0.0003611 </td>
   <td style="text-align:right;"> -0.8835509 </td>
   <td style="text-align:left;"> 0.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (6) Northern Ireland </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0089513 </td>
   <td style="text-align:right;"> 0.0000475 </td>
   <td style="text-align:right;"> 188.6264175 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0000918 </td>
   <td style="text-align:right;"> 0.0001250 </td>
   <td style="text-align:right;"> 0.7344039 </td>
   <td style="text-align:left;"> 0.46 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0003718 </td>
   <td style="text-align:right;"> 0.0001120 </td>
   <td style="text-align:right;"> -3.3192192 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (7) Committee </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0213269 </td>
   <td style="text-align:right;"> 0.0001391 </td>
   <td style="text-align:right;"> 153.2733445 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0007027 </td>
   <td style="text-align:right;"> 0.0003789 </td>
   <td style="text-align:right;"> -1.8544735 </td>
   <td style="text-align:left;"> 0.064 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0019547 </td>
   <td style="text-align:right;"> 0.0002682 </td>
   <td style="text-align:right;"> -7.2873458 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (8) Schools </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0147202 </td>
   <td style="text-align:right;"> 0.0001998 </td>
   <td style="text-align:right;"> 73.6628271 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0009596 </td>
   <td style="text-align:right;"> 0.0005049 </td>
   <td style="text-align:right;"> -1.9004642 </td>
   <td style="text-align:left;"> 0.057 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0021243 </td>
   <td style="text-align:right;"> 0.0004220 </td>
   <td style="text-align:right;"> 5.0339094 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (9) Energy &amp; climate change </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0170595 </td>
   <td style="text-align:right;"> 0.0001996 </td>
   <td style="text-align:right;"> 85.4830459 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0011769 </td>
   <td style="text-align:right;"> 0.0005297 </td>
   <td style="text-align:right;"> -2.2216777 </td>
   <td style="text-align:left;"> 0.026 * </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0035150 </td>
   <td style="text-align:right;"> 0.0004363 </td>
   <td style="text-align:right;"> -8.0556790 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (10) Defence </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0157878 </td>
   <td style="text-align:right;"> 0.0001960 </td>
   <td style="text-align:right;"> 80.5669608 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0075438 </td>
   <td style="text-align:right;"> 0.0004629 </td>
   <td style="text-align:right;"> -16.2958309 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0054226 </td>
   <td style="text-align:right;"> 0.0003689 </td>
   <td style="text-align:right;"> -14.7011516 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (11) Parliament </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0119002 </td>
   <td style="text-align:right;"> 0.0000790 </td>
   <td style="text-align:right;"> 150.7270212 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0036962 </td>
   <td style="text-align:right;"> 0.0002004 </td>
   <td style="text-align:right;"> -18.4408684 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0010986 </td>
   <td style="text-align:right;"> 0.0001539 </td>
   <td style="text-align:right;"> -7.1405982 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (12) International politics </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0126092 </td>
   <td style="text-align:right;"> 0.0001301 </td>
   <td style="text-align:right;"> 96.9147530 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0042351 </td>
   <td style="text-align:right;"> 0.0003173 </td>
   <td style="text-align:right;"> -13.3466916 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0054795 </td>
   <td style="text-align:right;"> 0.0002553 </td>
   <td style="text-align:right;"> -21.4598239 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (13) Ministers </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0167420 </td>
   <td style="text-align:right;"> 0.0001097 </td>
   <td style="text-align:right;"> 152.6140733 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0029758 </td>
   <td style="text-align:right;"> 0.0002835 </td>
   <td style="text-align:right;"> -10.4973664 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0031480 </td>
   <td style="text-align:right;"> 0.0002352 </td>
   <td style="text-align:right;"> 13.3853460 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (14) Policy impact </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0115294 </td>
   <td style="text-align:right;"> 0.0000460 </td>
   <td style="text-align:right;"> 250.6495464 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0002492 </td>
   <td style="text-align:right;"> 0.0001400 </td>
   <td style="text-align:right;"> 1.7794605 </td>
   <td style="text-align:left;"> 0.075 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0013696 </td>
   <td style="text-align:right;"> 0.0001031 </td>
   <td style="text-align:right;"> 13.2840851 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (15) Gender </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0048725 </td>
   <td style="text-align:right;"> 0.0001192 </td>
   <td style="text-align:right;"> 40.8683552 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0123785 </td>
   <td style="text-align:right;"> 0.0003718 </td>
   <td style="text-align:right;"> 33.2954452 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0119864 </td>
   <td style="text-align:right;"> 0.0003403 </td>
   <td style="text-align:right;"> 35.2184687 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (16) Regional development </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0230386 </td>
   <td style="text-align:right;"> 0.0001286 </td>
   <td style="text-align:right;"> 179.0836891 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0070474 </td>
   <td style="text-align:right;"> 0.0003605 </td>
   <td style="text-align:right;"> 19.5469666 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0002633 </td>
   <td style="text-align:right;"> 0.0002560 </td>
   <td style="text-align:right;"> 1.0283510 </td>
   <td style="text-align:left;"> 0.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (17) Communications </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0097569 </td>
   <td style="text-align:right;"> 0.0001206 </td>
   <td style="text-align:right;"> 80.9272960 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0006757 </td>
   <td style="text-align:right;"> 0.0003542 </td>
   <td style="text-align:right;"> -1.9079158 </td>
   <td style="text-align:left;"> 0.056 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0012010 </td>
   <td style="text-align:right;"> 0.0002622 </td>
   <td style="text-align:right;"> -4.5803173 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (18) Immigration </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0087066 </td>
   <td style="text-align:right;"> 0.0000958 </td>
   <td style="text-align:right;"> 90.8434358 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0007398 </td>
   <td style="text-align:right;"> 0.0002689 </td>
   <td style="text-align:right;"> 2.7511550 </td>
   <td style="text-align:left;"> 0.006 ** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0004172 </td>
   <td style="text-align:right;"> 0.0001876 </td>
   <td style="text-align:right;"> -2.2232089 </td>
   <td style="text-align:left;"> 0.026 * </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (19) Health system </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0161546 </td>
   <td style="text-align:right;"> 0.0002144 </td>
   <td style="text-align:right;"> 75.3641961 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0112557 </td>
   <td style="text-align:right;"> 0.0006424 </td>
   <td style="text-align:right;"> 17.5215414 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0062989 </td>
   <td style="text-align:right;"> 0.0004692 </td>
   <td style="text-align:right;"> 13.4247777 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (20) International development </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0160718 </td>
   <td style="text-align:right;"> 0.0001992 </td>
   <td style="text-align:right;"> 80.6818318 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0004271 </td>
   <td style="text-align:right;"> 0.0005264 </td>
   <td style="text-align:right;"> 0.8113560 </td>
   <td style="text-align:left;"> 0.42 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0033553 </td>
   <td style="text-align:right;"> 0.0003872 </td>
   <td style="text-align:right;"> -8.6652907 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (21) Benefits &amp; disability </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0120352 </td>
   <td style="text-align:right;"> 0.0001401 </td>
   <td style="text-align:right;"> 85.9321382 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0009240 </td>
   <td style="text-align:right;"> 0.0003857 </td>
   <td style="text-align:right;"> 2.3955512 </td>
   <td style="text-align:left;"> 0.017 * </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0120221 </td>
   <td style="text-align:right;"> 0.0003117 </td>
   <td style="text-align:right;"> 38.5681586 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (22) Sport &amp; culture </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0127176 </td>
   <td style="text-align:right;"> 0.0001628 </td>
   <td style="text-align:right;"> 78.1239927 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0024687 </td>
   <td style="text-align:right;"> 0.0004137 </td>
   <td style="text-align:right;"> -5.9672024 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0007459 </td>
   <td style="text-align:right;"> 0.0003273 </td>
   <td style="text-align:right;"> 2.2791470 </td>
   <td style="text-align:left;"> 0.023 * </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (23) History </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0137434 </td>
   <td style="text-align:right;"> 0.0001068 </td>
   <td style="text-align:right;"> 128.7005859 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0060887 </td>
   <td style="text-align:right;"> 0.0002682 </td>
   <td style="text-align:right;"> -22.7040542 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0040086 </td>
   <td style="text-align:right;"> 0.0002060 </td>
   <td style="text-align:right;"> -19.4564554 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (24) Higher education &amp; skills </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0143141 </td>
   <td style="text-align:right;"> 0.0001649 </td>
   <td style="text-align:right;"> 86.8035970 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0010177 </td>
   <td style="text-align:right;"> 0.0004323 </td>
   <td style="text-align:right;"> -2.3542892 </td>
   <td style="text-align:left;"> 0.019 * </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0001140 </td>
   <td style="text-align:right;"> 0.0003377 </td>
   <td style="text-align:right;"> -0.3374410 </td>
   <td style="text-align:left;"> 0.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (25) Concurring point </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0155255 </td>
   <td style="text-align:right;"> 0.0000456 </td>
   <td style="text-align:right;"> 340.5992455 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0018955 </td>
   <td style="text-align:right;"> 0.0001210 </td>
   <td style="text-align:right;"> -15.6629683 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0030037 </td>
   <td style="text-align:right;"> 0.0000879 </td>
   <td style="text-align:right;"> -34.1630931 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (26) Pensions </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0146935 </td>
   <td style="text-align:right;"> 0.0001655 </td>
   <td style="text-align:right;"> 88.8032560 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0007018 </td>
   <td style="text-align:right;"> 0.0004259 </td>
   <td style="text-align:right;"> 1.6480327 </td>
   <td style="text-align:left;"> 0.099 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0026241 </td>
   <td style="text-align:right;"> 0.0003288 </td>
   <td style="text-align:right;"> 7.9805827 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (27) Points of order </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0177828 </td>
   <td style="text-align:right;"> 0.0001298 </td>
   <td style="text-align:right;"> 137.0379770 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0065292 </td>
   <td style="text-align:right;"> 0.0003199 </td>
   <td style="text-align:right;"> -20.4077323 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0048139 </td>
   <td style="text-align:right;"> 0.0002510 </td>
   <td style="text-align:right;"> -19.1817394 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (28) Issues </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0344872 </td>
   <td style="text-align:right;"> 0.0000989 </td>
   <td style="text-align:right;"> 348.5468392 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0070260 </td>
   <td style="text-align:right;"> 0.0002833 </td>
   <td style="text-align:right;"> 24.7976459 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0025860 </td>
   <td style="text-align:right;"> 0.0002000 </td>
   <td style="text-align:right;"> -12.9281152 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (29) Constituencies </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0131817 </td>
   <td style="text-align:right;"> 0.0000488 </td>
   <td style="text-align:right;"> 270.1984215 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0011051 </td>
   <td style="text-align:right;"> 0.0001426 </td>
   <td style="text-align:right;"> 7.7497050 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0029675 </td>
   <td style="text-align:right;"> 0.0001074 </td>
   <td style="text-align:right;"> 27.6375528 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (30) Ethnic groups &amp; racism </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0085770 </td>
   <td style="text-align:right;"> 0.0000762 </td>
   <td style="text-align:right;"> 112.5185705 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0019092 </td>
   <td style="text-align:right;"> 0.0002214 </td>
   <td style="text-align:right;"> 8.6218731 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0019296 </td>
   <td style="text-align:right;"> 0.0001712 </td>
   <td style="text-align:right;"> 11.2684910 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (31) Amendments </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0149886 </td>
   <td style="text-align:right;"> 0.0001579 </td>
   <td style="text-align:right;"> 94.9117514 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0017627 </td>
   <td style="text-align:right;"> 0.0004336 </td>
   <td style="text-align:right;"> -4.0649040 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0033117 </td>
   <td style="text-align:right;"> 0.0003267 </td>
   <td style="text-align:right;"> -10.1359081 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (32) Reports </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0169550 </td>
   <td style="text-align:right;"> 0.0001053 </td>
   <td style="text-align:right;"> 161.0660794 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0012202 </td>
   <td style="text-align:right;"> 0.0002891 </td>
   <td style="text-align:right;"> 4.2205716 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0013416 </td>
   <td style="text-align:right;"> 0.0002338 </td>
   <td style="text-align:right;"> 5.7393471 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (33) People </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0377540 </td>
   <td style="text-align:right;"> 0.0001142 </td>
   <td style="text-align:right;"> 330.6821046 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0022823 </td>
   <td style="text-align:right;"> 0.0002852 </td>
   <td style="text-align:right;"> -8.0027413 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0010483 </td>
   <td style="text-align:right;"> 0.0002467 </td>
   <td style="text-align:right;"> -4.2484398 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (34) Wales &amp; Scotland </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0135422 </td>
   <td style="text-align:right;"> 0.0001613 </td>
   <td style="text-align:right;"> 83.9582772 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0047718 </td>
   <td style="text-align:right;"> 0.0003723 </td>
   <td style="text-align:right;"> -12.8157149 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0023248 </td>
   <td style="text-align:right;"> 0.0003040 </td>
   <td style="text-align:right;"> -7.6471660 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (35) Alcohol &amp; tobacco </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0108958 </td>
   <td style="text-align:right;"> 0.0001596 </td>
   <td style="text-align:right;"> 68.2678284 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0008351 </td>
   <td style="text-align:right;"> 0.0004298 </td>
   <td style="text-align:right;"> -1.9428124 </td>
   <td style="text-align:left;"> 0.052 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0011949 </td>
   <td style="text-align:right;"> 0.0003118 </td>
   <td style="text-align:right;"> 3.8326857 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (36) Place names </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0083691 </td>
   <td style="text-align:right;"> 0.0000670 </td>
   <td style="text-align:right;"> 124.8850558 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0000203 </td>
   <td style="text-align:right;"> 0.0001872 </td>
   <td style="text-align:right;"> 0.1082051 </td>
   <td style="text-align:left;"> 0.91 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0011698 </td>
   <td style="text-align:right;"> 0.0001442 </td>
   <td style="text-align:right;"> 8.1124934 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (37) Budget </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0246548 </td>
   <td style="text-align:right;"> 0.0001706 </td>
   <td style="text-align:right;"> 144.5476743 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0023125 </td>
   <td style="text-align:right;"> 0.0004588 </td>
   <td style="text-align:right;"> -5.0402730 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0007202 </td>
   <td style="text-align:right;"> 0.0003681 </td>
   <td style="text-align:right;"> 1.9566833 </td>
   <td style="text-align:left;"> 0.050 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (38) Tax </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0193464 </td>
   <td style="text-align:right;"> 0.0001846 </td>
   <td style="text-align:right;"> 104.8249676 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0013563 </td>
   <td style="text-align:right;"> 0.0005276 </td>
   <td style="text-align:right;"> -2.5704781 </td>
   <td style="text-align:left;"> 0.010 * </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0054475 </td>
   <td style="text-align:right;"> 0.0003782 </td>
   <td style="text-align:right;"> 14.4025035 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (39) Private companies </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0123819 </td>
   <td style="text-align:right;"> 0.0001247 </td>
   <td style="text-align:right;"> 99.2803260 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0005574 </td>
   <td style="text-align:right;"> 0.0003548 </td>
   <td style="text-align:right;"> 1.5708232 </td>
   <td style="text-align:left;"> 0.12 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0018006 </td>
   <td style="text-align:right;"> 0.0002471 </td>
   <td style="text-align:right;"> -7.2877103 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (40) Environment &amp; fishing </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0094593 </td>
   <td style="text-align:right;"> 0.0001537 </td>
   <td style="text-align:right;"> 61.5329906 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0030968 </td>
   <td style="text-align:right;"> 0.0003595 </td>
   <td style="text-align:right;"> -8.6139752 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0021424 </td>
   <td style="text-align:right;"> 0.0002977 </td>
   <td style="text-align:right;"> -7.1963495 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (41) Crime </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0141411 </td>
   <td style="text-align:right;"> 0.0001675 </td>
   <td style="text-align:right;"> 84.4289615 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0086082 </td>
   <td style="text-align:right;"> 0.0005414 </td>
   <td style="text-align:right;"> 15.9003096 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0034703 </td>
   <td style="text-align:right;"> 0.0003565 </td>
   <td style="text-align:right;"> 9.7336239 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (42) Bills </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0244504 </td>
   <td style="text-align:right;"> 0.0001470 </td>
   <td style="text-align:right;"> 166.3269098 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0021326 </td>
   <td style="text-align:right;"> 0.0004162 </td>
   <td style="text-align:right;"> 5.1238373 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0029722 </td>
   <td style="text-align:right;"> 0.0002798 </td>
   <td style="text-align:right;"> -10.6214651 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (43) Children </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0076746 </td>
   <td style="text-align:right;"> 0.0001342 </td>
   <td style="text-align:right;"> 57.2048128 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0092120 </td>
   <td style="text-align:right;"> 0.0003998 </td>
   <td style="text-align:right;"> 23.0397025 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0095665 </td>
   <td style="text-align:right;"> 0.0002831 </td>
   <td style="text-align:right;"> 33.7919767 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (44) Utilities &amp; PFI </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0123340 </td>
   <td style="text-align:right;"> 0.0000953 </td>
   <td style="text-align:right;"> 129.4397719 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0007794 </td>
   <td style="text-align:right;"> 0.0002306 </td>
   <td style="text-align:right;"> -3.3798253 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0002427 </td>
   <td style="text-align:right;"> 0.0001869 </td>
   <td style="text-align:right;"> 1.2984206 </td>
   <td style="text-align:left;"> 0.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (45) Middle East </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0174933 </td>
   <td style="text-align:right;"> 0.0002061 </td>
   <td style="text-align:right;"> 84.8579027 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0028414 </td>
   <td style="text-align:right;"> 0.0005233 </td>
   <td style="text-align:right;"> -5.4293854 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0017119 </td>
   <td style="text-align:right;"> 0.0004209 </td>
   <td style="text-align:right;"> -4.0667751 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (46) Local authorities </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0179688 </td>
   <td style="text-align:right;"> 0.0001447 </td>
   <td style="text-align:right;"> 124.1981511 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0044476 </td>
   <td style="text-align:right;"> 0.0004067 </td>
   <td style="text-align:right;"> 10.9352937 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0001197 </td>
   <td style="text-align:right;"> 0.0003109 </td>
   <td style="text-align:right;"> 0.3850565 </td>
   <td style="text-align:left;"> 0.70 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (47) Elections </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0181763 </td>
   <td style="text-align:right;"> 0.0001765 </td>
   <td style="text-align:right;"> 102.9580167 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0091686 </td>
   <td style="text-align:right;"> 0.0004169 </td>
   <td style="text-align:right;"> -21.9946932 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0068068 </td>
   <td style="text-align:right;"> 0.0003407 </td>
   <td style="text-align:right;"> -19.9795969 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (48) Debate </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0180046 </td>
   <td style="text-align:right;"> 0.0000747 </td>
   <td style="text-align:right;"> 241.1409800 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0034975 </td>
   <td style="text-align:right;"> 0.0001995 </td>
   <td style="text-align:right;"> -17.5345075 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0009795 </td>
   <td style="text-align:right;"> 0.0001460 </td>
   <td style="text-align:right;"> -6.7084583 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (49) Transport </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0164433 </td>
   <td style="text-align:right;"> 0.0001992 </td>
   <td style="text-align:right;"> 82.5469612 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0027404 </td>
   <td style="text-align:right;"> 0.0005200 </td>
   <td style="text-align:right;"> -5.2699944 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0008832 </td>
   <td style="text-align:right;"> 0.0003887 </td>
   <td style="text-align:right;"> 2.2722243 </td>
   <td style="text-align:left;"> 0.023 * </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (50) Questions </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0161739 </td>
   <td style="text-align:right;"> 0.0000747 </td>
   <td style="text-align:right;"> 216.4802108 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0001347 </td>
   <td style="text-align:right;"> 0.0001917 </td>
   <td style="text-align:right;"> 0.7026877 </td>
   <td style="text-align:left;"> 0.48 </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0002156 </td>
   <td style="text-align:right;"> 0.0001612 </td>
   <td style="text-align:right;"> 1.3370103 </td>
   <td style="text-align:left;"> 0.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (51) Families </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0101066 </td>
   <td style="text-align:right;"> 0.0001120 </td>
   <td style="text-align:right;"> 90.2754336 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0019099 </td>
   <td style="text-align:right;"> 0.0003345 </td>
   <td style="text-align:right;"> 5.7101621 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0058694 </td>
   <td style="text-align:right;"> 0.0002490 </td>
   <td style="text-align:right;"> 23.5743745 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (52) Health research </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0088032 </td>
   <td style="text-align:right;"> 0.0001506 </td>
   <td style="text-align:right;"> 58.4431635 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0076293 </td>
   <td style="text-align:right;"> 0.0004354 </td>
   <td style="text-align:right;"> 17.5221947 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0036071 </td>
   <td style="text-align:right;"> 0.0003283 </td>
   <td style="text-align:right;"> 10.9860076 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (53) Dispatch box </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0075507 </td>
   <td style="text-align:right;"> 0.0000222 </td>
   <td style="text-align:right;"> 339.4553075 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0011336 </td>
   <td style="text-align:right;"> 0.0000547 </td>
   <td style="text-align:right;"> -20.7380437 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0009567 </td>
   <td style="text-align:right;"> 0.0000451 </td>
   <td style="text-align:right;"> -21.2112539 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (54) Parties </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0248208 </td>
   <td style="text-align:right;"> 0.0001250 </td>
   <td style="text-align:right;"> 198.6194250 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0066286 </td>
   <td style="text-align:right;"> 0.0003404 </td>
   <td style="text-align:right;"> -19.4738357 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0060004 </td>
   <td style="text-align:right;"> 0.0002612 </td>
   <td style="text-align:right;"> -22.9753201 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (55) Statements </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0211145 </td>
   <td style="text-align:right;"> 0.0000695 </td>
   <td style="text-align:right;"> 303.6073257 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0045081 </td>
   <td style="text-align:right;"> 0.0001835 </td>
   <td style="text-align:right;"> -24.5656232 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0014976 </td>
   <td style="text-align:right;"> 0.0001321 </td>
   <td style="text-align:right;"> -11.3348065 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (56) European Union </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0163485 </td>
   <td style="text-align:right;"> 0.0001617 </td>
   <td style="text-align:right;"> 101.1247631 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0024152 </td>
   <td style="text-align:right;"> 0.0004603 </td>
   <td style="text-align:right;"> -5.2464532 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0053873 </td>
   <td style="text-align:right;"> 0.0003330 </td>
   <td style="text-align:right;"> -16.1772923 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (57) Locations </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0100643 </td>
   <td style="text-align:right;"> 0.0001084 </td>
   <td style="text-align:right;"> 92.8197758 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0025091 </td>
   <td style="text-align:right;"> 0.0002638 </td>
   <td style="text-align:right;"> -9.5097745 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0000351 </td>
   <td style="text-align:right;"> 0.0002073 </td>
   <td style="text-align:right;"> 0.1694330 </td>
   <td style="text-align:left;"> 0.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (58) Jobs &amp; manufacturing </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0175832 </td>
   <td style="text-align:right;"> 0.0001661 </td>
   <td style="text-align:right;"> 105.8415780 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0016180 </td>
   <td style="text-align:right;"> 0.0004361 </td>
   <td style="text-align:right;"> -3.7101105 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0012097 </td>
   <td style="text-align:right;"> 0.0003435 </td>
   <td style="text-align:right;"> 3.5220833 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (59) Small business </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0070661 </td>
   <td style="text-align:right;"> 0.0000729 </td>
   <td style="text-align:right;"> 96.9279553 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0005510 </td>
   <td style="text-align:right;"> 0.0001992 </td>
   <td style="text-align:right;"> 2.7659572 </td>
   <td style="text-align:left;"> 0.006 ** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0003679 </td>
   <td style="text-align:right;"> 0.0001444 </td>
   <td style="text-align:right;"> -2.5475014 </td>
   <td style="text-align:left;"> 0.011 * </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (60) Agreement &amp; disagreement </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0328534 </td>
   <td style="text-align:right;"> 0.0001148 </td>
   <td style="text-align:right;"> 286.1121047 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0089938 </td>
   <td style="text-align:right;"> 0.0002993 </td>
   <td style="text-align:right;"> -30.0480197 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0109435 </td>
   <td style="text-align:right;"> 0.0002052 </td>
   <td style="text-align:right;"> -53.3186986 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (61) Voluntary sector </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0187122 </td>
   <td style="text-align:right;"> 0.0001262 </td>
   <td style="text-align:right;"> 148.2917436 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0111200 </td>
   <td style="text-align:right;"> 0.0003727 </td>
   <td style="text-align:right;"> 29.8367154 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0056592 </td>
   <td style="text-align:right;"> 0.0002489 </td>
   <td style="text-align:right;"> 22.7347633 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (62) Comments </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0152719 </td>
   <td style="text-align:right;"> 0.0000669 </td>
   <td style="text-align:right;"> 228.2633989 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0029202 </td>
   <td style="text-align:right;"> 0.0001698 </td>
   <td style="text-align:right;"> -17.1938558 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0040227 </td>
   <td style="text-align:right;"> 0.0001195 </td>
   <td style="text-align:right;"> -33.6767477 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (63) Social care </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0090482 </td>
   <td style="text-align:right;"> 0.0001161 </td>
   <td style="text-align:right;"> 77.9034505 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0094874 </td>
   <td style="text-align:right;"> 0.0003813 </td>
   <td style="text-align:right;"> 24.8836001 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0073824 </td>
   <td style="text-align:right;"> 0.0002803 </td>
   <td style="text-align:right;"> 26.3369752 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (64) Time </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0213812 </td>
   <td style="text-align:right;"> 0.0000671 </td>
   <td style="text-align:right;"> 318.8302829 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0020738 </td>
   <td style="text-align:right;"> 0.0001749 </td>
   <td style="text-align:right;"> -11.8552669 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0016503 </td>
   <td style="text-align:right;"> 0.0001438 </td>
   <td style="text-align:right;"> -11.4794890 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (65) Media &amp; animals </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0121360 </td>
   <td style="text-align:right;"> 0.0001660 </td>
   <td style="text-align:right;"> 73.1167880 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> -0.0057062 </td>
   <td style="text-align:right;"> 0.0004035 </td>
   <td style="text-align:right;"> -14.1411473 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> -0.0017668 </td>
   <td style="text-align:right;"> 0.0003173 </td>
   <td style="text-align:right;"> -5.5675371 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="3"> (66) Other </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0038250 </td>
   <td style="text-align:right;"> 0.0000115 </td>
   <td style="text-align:right;"> 333.9154584 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Non-AWS </td>
   <td style="text-align:right;"> 0.0002527 </td>
   <td style="text-align:right;"> 0.0000291 </td>
   <td style="text-align:right;"> 8.6739083 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> AWS </td>
   <td style="text-align:right;"> 0.0003063 </td>
   <td style="text-align:right;"> 0.0000252 </td>
   <td style="text-align:right;"> 12.1447784 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
</tbody>
</table>




Table \@ref(tab:topic-summary-table) shows the number and percentage of speeches assigned to each topic, based on its $\theta$ value. The results in this table differ slightly from those in Table \@ref(tab:estimate-table-k0), as it uses a "winner-take-all" method to assign an overall topic to each speech, rather than a prevalence of a given topic across all speeches. One of the topics -- Topic 66 -- is never the most likely topic in the matrix of number of documents by number of topics -- labelled $\theta$ by @roberts2018 -- and so while it is included in the model, assignment of single topics to speeches uses the highest $\theta$ for each speech. Other topics are rarely used -- Topic 53, which we labelled "Dispatch Box", only has five topics assigned to it, four from Male MPs and one from an AWS MP.

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:topic-summary-table)Count and Distribution of Topics</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Topic </th>
   <th style="text-align:right;"> AWS Speeches </th>
   <th style="text-align:right;"> Percent of AWS Speeches </th>
   <th style="text-align:right;"> Non-AWS Speeches </th>
   <th style="text-align:right;"> Percent of non-AWS Speeches </th>
   <th style="text-align:right;"> Male MP Speeches </th>
   <th style="text-align:right;"> Percent of Male MP Speeches </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> (1) Employment &amp; unions </td>
   <td style="text-align:right;"> 452 </td>
   <td style="text-align:right;"> 0.84% </td>
   <td style="text-align:right;"> 260 </td>
   <td style="text-align:right;"> 0.93% </td>
   <td style="text-align:right;"> 2,149 </td>
   <td style="text-align:right;"> 1.27% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (2) Legal system </td>
   <td style="text-align:right;"> 865 </td>
   <td style="text-align:right;"> 1.61% </td>
   <td style="text-align:right;"> 1,096 </td>
   <td style="text-align:right;"> 3.93% </td>
   <td style="text-align:right;"> 3,884 </td>
   <td style="text-align:right;"> 2.29% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (3) Roads </td>
   <td style="text-align:right;"> 558 </td>
   <td style="text-align:right;"> 1.04% </td>
   <td style="text-align:right;"> 298 </td>
   <td style="text-align:right;"> 1.07% </td>
   <td style="text-align:right;"> 2,142 </td>
   <td style="text-align:right;"> 1.26% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (4) Housing </td>
   <td style="text-align:right;"> 1,383 </td>
   <td style="text-align:right;"> 2.57% </td>
   <td style="text-align:right;"> 665 </td>
   <td style="text-align:right;"> 2.39% </td>
   <td style="text-align:right;"> 2,416 </td>
   <td style="text-align:right;"> 1.43% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (5) Police, firefighters &amp; prison </td>
   <td style="text-align:right;"> 1,046 </td>
   <td style="text-align:right;"> 1.94% </td>
   <td style="text-align:right;"> 709 </td>
   <td style="text-align:right;"> 2.54% </td>
   <td style="text-align:right;"> 3,353 </td>
   <td style="text-align:right;"> 1.98% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (6) Northern Ireland </td>
   <td style="text-align:right;"> 221 </td>
   <td style="text-align:right;"> 0.41% </td>
   <td style="text-align:right;"> 66 </td>
   <td style="text-align:right;"> 0.24% </td>
   <td style="text-align:right;"> 603 </td>
   <td style="text-align:right;"> 0.36% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (7) Committee </td>
   <td style="text-align:right;"> 1,050 </td>
   <td style="text-align:right;"> 1.95% </td>
   <td style="text-align:right;"> 492 </td>
   <td style="text-align:right;"> 1.77% </td>
   <td style="text-align:right;"> 3,888 </td>
   <td style="text-align:right;"> 2.29% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (8) Schools </td>
   <td style="text-align:right;"> 1,367 </td>
   <td style="text-align:right;"> 2.54% </td>
   <td style="text-align:right;"> 522 </td>
   <td style="text-align:right;"> 1.87% </td>
   <td style="text-align:right;"> 3,780 </td>
   <td style="text-align:right;"> 2.23% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (9) Energy &amp; climate change </td>
   <td style="text-align:right;"> 1,105 </td>
   <td style="text-align:right;"> 2.05% </td>
   <td style="text-align:right;"> 745 </td>
   <td style="text-align:right;"> 2.67% </td>
   <td style="text-align:right;"> 4,630 </td>
   <td style="text-align:right;"> 2.73% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (10) Defence </td>
   <td style="text-align:right;"> 794 </td>
   <td style="text-align:right;"> 1.48% </td>
   <td style="text-align:right;"> 280 </td>
   <td style="text-align:right;"> 1.00% </td>
   <td style="text-align:right;"> 3,999 </td>
   <td style="text-align:right;"> 2.36% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (11) Parliament </td>
   <td style="text-align:right;"> 375 </td>
   <td style="text-align:right;"> 0.70% </td>
   <td style="text-align:right;"> 85 </td>
   <td style="text-align:right;"> 0.31% </td>
   <td style="text-align:right;"> 1,079 </td>
   <td style="text-align:right;"> 0.64% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (12) International politics </td>
   <td style="text-align:right;"> 289 </td>
   <td style="text-align:right;"> 0.54% </td>
   <td style="text-align:right;"> 161 </td>
   <td style="text-align:right;"> 0.58% </td>
   <td style="text-align:right;"> 2,021 </td>
   <td style="text-align:right;"> 1.19% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (13) Ministers </td>
   <td style="text-align:right;"> 872 </td>
   <td style="text-align:right;"> 1.62% </td>
   <td style="text-align:right;"> 242 </td>
   <td style="text-align:right;"> 0.87% </td>
   <td style="text-align:right;"> 2,083 </td>
   <td style="text-align:right;"> 1.23% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (14) Policy impact </td>
   <td style="text-align:right;"> 242 </td>
   <td style="text-align:right;"> 0.45% </td>
   <td style="text-align:right;"> 68 </td>
   <td style="text-align:right;"> 0.24% </td>
   <td style="text-align:right;"> 417 </td>
   <td style="text-align:right;"> 0.25% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (15) Gender </td>
   <td style="text-align:right;"> 1,257 </td>
   <td style="text-align:right;"> 2.34% </td>
   <td style="text-align:right;"> 701 </td>
   <td style="text-align:right;"> 2.52% </td>
   <td style="text-align:right;"> 551 </td>
   <td style="text-align:right;"> 0.33% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (16) Regional development </td>
   <td style="text-align:right;"> 931 </td>
   <td style="text-align:right;"> 1.73% </td>
   <td style="text-align:right;"> 710 </td>
   <td style="text-align:right;"> 2.55% </td>
   <td style="text-align:right;"> 2,704 </td>
   <td style="text-align:right;"> 1.60% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (17) Communications </td>
   <td style="text-align:right;"> 385 </td>
   <td style="text-align:right;"> 0.72% </td>
   <td style="text-align:right;"> 287 </td>
   <td style="text-align:right;"> 1.03% </td>
   <td style="text-align:right;"> 1,751 </td>
   <td style="text-align:right;"> 1.03% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (18) Immigration </td>
   <td style="text-align:right;"> 425 </td>
   <td style="text-align:right;"> 0.79% </td>
   <td style="text-align:right;"> 220 </td>
   <td style="text-align:right;"> 0.79% </td>
   <td style="text-align:right;"> 1,218 </td>
   <td style="text-align:right;"> 0.72% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (19) Health system </td>
   <td style="text-align:right;"> 2,149 </td>
   <td style="text-align:right;"> 4.00% </td>
   <td style="text-align:right;"> 1,489 </td>
   <td style="text-align:right;"> 5.34% </td>
   <td style="text-align:right;"> 4,682 </td>
   <td style="text-align:right;"> 2.76% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (20) International development </td>
   <td style="text-align:right;"> 862 </td>
   <td style="text-align:right;"> 1.60% </td>
   <td style="text-align:right;"> 687 </td>
   <td style="text-align:right;"> 2.47% </td>
   <td style="text-align:right;"> 3,718 </td>
   <td style="text-align:right;"> 2.19% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (21) Benefits &amp; disability </td>
   <td style="text-align:right;"> 1,888 </td>
   <td style="text-align:right;"> 3.51% </td>
   <td style="text-align:right;"> 317 </td>
   <td style="text-align:right;"> 1.14% </td>
   <td style="text-align:right;"> 2,101 </td>
   <td style="text-align:right;"> 1.24% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (22) Sport &amp; culture </td>
   <td style="text-align:right;"> 846 </td>
   <td style="text-align:right;"> 1.57% </td>
   <td style="text-align:right;"> 317 </td>
   <td style="text-align:right;"> 1.14% </td>
   <td style="text-align:right;"> 2,628 </td>
   <td style="text-align:right;"> 1.55% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (23) History </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 0.56% </td>
   <td style="text-align:right;"> 140 </td>
   <td style="text-align:right;"> 0.50% </td>
   <td style="text-align:right;"> 1,720 </td>
   <td style="text-align:right;"> 1.02% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (24) Higher education &amp; skills </td>
   <td style="text-align:right;"> 974 </td>
   <td style="text-align:right;"> 1.81% </td>
   <td style="text-align:right;"> 456 </td>
   <td style="text-align:right;"> 1.64% </td>
   <td style="text-align:right;"> 3,501 </td>
   <td style="text-align:right;"> 2.07% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (25) Concurring point </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:right;"> 0.06% </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 0.03% </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:right;"> 0.08% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (26) Pensions </td>
   <td style="text-align:right;"> 1,231 </td>
   <td style="text-align:right;"> 2.29% </td>
   <td style="text-align:right;"> 529 </td>
   <td style="text-align:right;"> 1.90% </td>
   <td style="text-align:right;"> 2,982 </td>
   <td style="text-align:right;"> 1.76% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (27) Points of order </td>
   <td style="text-align:right;"> 787 </td>
   <td style="text-align:right;"> 1.46% </td>
   <td style="text-align:right;"> 230 </td>
   <td style="text-align:right;"> 0.83% </td>
   <td style="text-align:right;"> 4,069 </td>
   <td style="text-align:right;"> 2.40% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (28) Issues </td>
   <td style="text-align:right;"> 1,618 </td>
   <td style="text-align:right;"> 3.01% </td>
   <td style="text-align:right;"> 1,720 </td>
   <td style="text-align:right;"> 6.17% </td>
   <td style="text-align:right;"> 6,745 </td>
   <td style="text-align:right;"> 3.98% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (29) Constituencies </td>
   <td style="text-align:right;"> 125 </td>
   <td style="text-align:right;"> 0.23% </td>
   <td style="text-align:right;"> 30 </td>
   <td style="text-align:right;"> 0.11% </td>
   <td style="text-align:right;"> 228 </td>
   <td style="text-align:right;"> 0.13% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (30) Ethnic groups &amp; racism </td>
   <td style="text-align:right;"> 454 </td>
   <td style="text-align:right;"> 0.84% </td>
   <td style="text-align:right;"> 203 </td>
   <td style="text-align:right;"> 0.73% </td>
   <td style="text-align:right;"> 945 </td>
   <td style="text-align:right;"> 0.56% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (31) Amendments </td>
   <td style="text-align:right;"> 526 </td>
   <td style="text-align:right;"> 0.98% </td>
   <td style="text-align:right;"> 317 </td>
   <td style="text-align:right;"> 1.14% </td>
   <td style="text-align:right;"> 2,293 </td>
   <td style="text-align:right;"> 1.35% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (32) Reports </td>
   <td style="text-align:right;"> 536 </td>
   <td style="text-align:right;"> 1.00% </td>
   <td style="text-align:right;"> 322 </td>
   <td style="text-align:right;"> 1.16% </td>
   <td style="text-align:right;"> 1,488 </td>
   <td style="text-align:right;"> 0.88% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (33) People </td>
   <td style="text-align:right;"> 2,818 </td>
   <td style="text-align:right;"> 5.24% </td>
   <td style="text-align:right;"> 1,048 </td>
   <td style="text-align:right;"> 3.76% </td>
   <td style="text-align:right;"> 9,136 </td>
   <td style="text-align:right;"> 5.39% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (34) Wales &amp; Scotland </td>
   <td style="text-align:right;"> 662 </td>
   <td style="text-align:right;"> 1.23% </td>
   <td style="text-align:right;"> 224 </td>
   <td style="text-align:right;"> 0.80% </td>
   <td style="text-align:right;"> 2,655 </td>
   <td style="text-align:right;"> 1.57% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (35) Alcohol &amp; tobacco </td>
   <td style="text-align:right;"> 846 </td>
   <td style="text-align:right;"> 1.57% </td>
   <td style="text-align:right;"> 336 </td>
   <td style="text-align:right;"> 1.21% </td>
   <td style="text-align:right;"> 2,357 </td>
   <td style="text-align:right;"> 1.39% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (36) Place names </td>
   <td style="text-align:right;"> 163 </td>
   <td style="text-align:right;"> 0.30% </td>
   <td style="text-align:right;"> 47 </td>
   <td style="text-align:right;"> 0.17% </td>
   <td style="text-align:right;"> 447 </td>
   <td style="text-align:right;"> 0.26% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (37) Budget </td>
   <td style="text-align:right;"> 1,616 </td>
   <td style="text-align:right;"> 3.00% </td>
   <td style="text-align:right;"> 668 </td>
   <td style="text-align:right;"> 2.40% </td>
   <td style="text-align:right;"> 5,567 </td>
   <td style="text-align:right;"> 3.29% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (38) Tax </td>
   <td style="text-align:right;"> 2,149 </td>
   <td style="text-align:right;"> 4.00% </td>
   <td style="text-align:right;"> 691 </td>
   <td style="text-align:right;"> 2.48% </td>
   <td style="text-align:right;"> 4,562 </td>
   <td style="text-align:right;"> 2.69% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (39) Private companies </td>
   <td style="text-align:right;"> 452 </td>
   <td style="text-align:right;"> 0.84% </td>
   <td style="text-align:right;"> 362 </td>
   <td style="text-align:right;"> 1.30% </td>
   <td style="text-align:right;"> 1,794 </td>
   <td style="text-align:right;"> 1.06% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (40) Environment &amp; fishing </td>
   <td style="text-align:right;"> 435 </td>
   <td style="text-align:right;"> 0.81% </td>
   <td style="text-align:right;"> 186 </td>
   <td style="text-align:right;"> 0.67% </td>
   <td style="text-align:right;"> 1,689 </td>
   <td style="text-align:right;"> 1.00% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (41) Crime </td>
   <td style="text-align:right;"> 1,408 </td>
   <td style="text-align:right;"> 2.62% </td>
   <td style="text-align:right;"> 926 </td>
   <td style="text-align:right;"> 3.32% </td>
   <td style="text-align:right;"> 3,073 </td>
   <td style="text-align:right;"> 1.81% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (42) Bills </td>
   <td style="text-align:right;"> 1,199 </td>
   <td style="text-align:right;"> 2.23% </td>
   <td style="text-align:right;"> 931 </td>
   <td style="text-align:right;"> 3.34% </td>
   <td style="text-align:right;"> 4,534 </td>
   <td style="text-align:right;"> 2.68% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (43) Children </td>
   <td style="text-align:right;"> 1,176 </td>
   <td style="text-align:right;"> 2.19% </td>
   <td style="text-align:right;"> 631 </td>
   <td style="text-align:right;"> 2.26% </td>
   <td style="text-align:right;"> 1,298 </td>
   <td style="text-align:right;"> 0.77% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (44) Utilities &amp; PFI </td>
   <td style="text-align:right;"> 433 </td>
   <td style="text-align:right;"> 0.81% </td>
   <td style="text-align:right;"> 175 </td>
   <td style="text-align:right;"> 0.63% </td>
   <td style="text-align:right;"> 1,416 </td>
   <td style="text-align:right;"> 0.84% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (45) Middle East </td>
   <td style="text-align:right;"> 1,284 </td>
   <td style="text-align:right;"> 2.39% </td>
   <td style="text-align:right;"> 588 </td>
   <td style="text-align:right;"> 2.11% </td>
   <td style="text-align:right;"> 4,543 </td>
   <td style="text-align:right;"> 2.68% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (46) Local authorities </td>
   <td style="text-align:right;"> 1,050 </td>
   <td style="text-align:right;"> 1.95% </td>
   <td style="text-align:right;"> 711 </td>
   <td style="text-align:right;"> 2.55% </td>
   <td style="text-align:right;"> 3,686 </td>
   <td style="text-align:right;"> 2.18% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (47) Elections </td>
   <td style="text-align:right;"> 759 </td>
   <td style="text-align:right;"> 1.41% </td>
   <td style="text-align:right;"> 240 </td>
   <td style="text-align:right;"> 0.86% </td>
   <td style="text-align:right;"> 4,308 </td>
   <td style="text-align:right;"> 2.54% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (48) Debate </td>
   <td style="text-align:right;"> 422 </td>
   <td style="text-align:right;"> 0.78% </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 0.46% </td>
   <td style="text-align:right;"> 1,364 </td>
   <td style="text-align:right;"> 0.81% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (49) Transport </td>
   <td style="text-align:right;"> 1,517 </td>
   <td style="text-align:right;"> 2.82% </td>
   <td style="text-align:right;"> 546 </td>
   <td style="text-align:right;"> 1.96% </td>
   <td style="text-align:right;"> 4,172 </td>
   <td style="text-align:right;"> 2.46% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (50) Questions </td>
   <td style="text-align:right;"> 390 </td>
   <td style="text-align:right;"> 0.73% </td>
   <td style="text-align:right;"> 182 </td>
   <td style="text-align:right;"> 0.65% </td>
   <td style="text-align:right;"> 1,115 </td>
   <td style="text-align:right;"> 0.66% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (51) Families </td>
   <td style="text-align:right;"> 786 </td>
   <td style="text-align:right;"> 1.46% </td>
   <td style="text-align:right;"> 276 </td>
   <td style="text-align:right;"> 0.99% </td>
   <td style="text-align:right;"> 1,169 </td>
   <td style="text-align:right;"> 0.69% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (52) Health research </td>
   <td style="text-align:right;"> 743 </td>
   <td style="text-align:right;"> 1.38% </td>
   <td style="text-align:right;"> 591 </td>
   <td style="text-align:right;"> 2.12% </td>
   <td style="text-align:right;"> 1,467 </td>
   <td style="text-align:right;"> 0.87% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (53) Dispatch box </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.00% </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA% </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 0.00% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (54) Parties </td>
   <td style="text-align:right;"> 879 </td>
   <td style="text-align:right;"> 1.63% </td>
   <td style="text-align:right;"> 438 </td>
   <td style="text-align:right;"> 1.57% </td>
   <td style="text-align:right;"> 5,053 </td>
   <td style="text-align:right;"> 2.98% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (55) Statements </td>
   <td style="text-align:right;"> 180 </td>
   <td style="text-align:right;"> 0.33% </td>
   <td style="text-align:right;"> 79 </td>
   <td style="text-align:right;"> 0.28% </td>
   <td style="text-align:right;"> 856 </td>
   <td style="text-align:right;"> 0.51% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (56) European Union </td>
   <td style="text-align:right;"> 769 </td>
   <td style="text-align:right;"> 1.43% </td>
   <td style="text-align:right;"> 554 </td>
   <td style="text-align:right;"> 1.99% </td>
   <td style="text-align:right;"> 3,949 </td>
   <td style="text-align:right;"> 2.33% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (57) Locations </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 0.56% </td>
   <td style="text-align:right;"> 126 </td>
   <td style="text-align:right;"> 0.45% </td>
   <td style="text-align:right;"> 1,112 </td>
   <td style="text-align:right;"> 0.66% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (58) Jobs &amp; manufacturing </td>
   <td style="text-align:right;"> 1,426 </td>
   <td style="text-align:right;"> 2.65% </td>
   <td style="text-align:right;"> 586 </td>
   <td style="text-align:right;"> 2.10% </td>
   <td style="text-align:right;"> 4,162 </td>
   <td style="text-align:right;"> 2.46% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (59) Small business </td>
   <td style="text-align:right;"> 229 </td>
   <td style="text-align:right;"> 0.43% </td>
   <td style="text-align:right;"> 183 </td>
   <td style="text-align:right;"> 0.66% </td>
   <td style="text-align:right;"> 791 </td>
   <td style="text-align:right;"> 0.47% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (60) Agreement &amp; disagreement </td>
   <td style="text-align:right;"> 523 </td>
   <td style="text-align:right;"> 0.97% </td>
   <td style="text-align:right;"> 275 </td>
   <td style="text-align:right;"> 0.99% </td>
   <td style="text-align:right;"> 4,962 </td>
   <td style="text-align:right;"> 2.93% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (61) Voluntary sector </td>
   <td style="text-align:right;"> 1,307 </td>
   <td style="text-align:right;"> 2.43% </td>
   <td style="text-align:right;"> 853 </td>
   <td style="text-align:right;"> 3.06% </td>
   <td style="text-align:right;"> 2,480 </td>
   <td style="text-align:right;"> 1.46% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (62) Comments </td>
   <td style="text-align:right;"> 108 </td>
   <td style="text-align:right;"> 0.20% </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0.34% </td>
   <td style="text-align:right;"> 865 </td>
   <td style="text-align:right;"> 0.51% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (63) Social care </td>
   <td style="text-align:right;"> 865 </td>
   <td style="text-align:right;"> 1.61% </td>
   <td style="text-align:right;"> 521 </td>
   <td style="text-align:right;"> 1.87% </td>
   <td style="text-align:right;"> 1,187 </td>
   <td style="text-align:right;"> 0.70% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (64) Time </td>
   <td style="text-align:right;"> 208 </td>
   <td style="text-align:right;"> 0.39% </td>
   <td style="text-align:right;"> 103 </td>
   <td style="text-align:right;"> 0.37% </td>
   <td style="text-align:right;"> 930 </td>
   <td style="text-align:right;"> 0.55% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (65) Media &amp; animals </td>
   <td style="text-align:right;"> 741 </td>
   <td style="text-align:right;"> 1.38% </td>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:right;"> 0.68% </td>
   <td style="text-align:right;"> 2,811 </td>
   <td style="text-align:right;"> 1.66% </td>
  </tr>
</tbody>
</table>


### Topic Graphs

The estimate effects in these graphs were extracted using the `tidystm` package by Mikael Poul Johannesson.[^2] Figure \@ref(fig:tidystm-graphs) highlights nine topics with different expected proportions between male, AWS and non-AWS Labour MPs, with the error bars representing 95% confidence intervals. See Figure \@ref(fig:topic-bar) for a graph of all 66 topics.

<div class="figure">
<img src="methodology_files/figure-html/tidystm-graphs-1.png" alt="Selected Topic Proportions"  />
<p class="caption">(\#fig:tidystm-graphs)Selected Topic Proportions</p>
</div>

<div class="figure">
<img src="methodology_files/figure-html/topic-bar-1.png" alt="All Topic Proportions"  />
<p class="caption">(\#fig:topic-bar)All Topic Proportions</p>
</div>

### Word Occurrences

The table below shows the twenty most common words in each topic, and the twenty words with the highest FREX score, a measure that uses a harmonic mean of word exclusivity and topic coherence [@airoldi2016]. We have named each topic based on the most common words and highest FREX score words in each topic.



<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:topic-words-table-k0)Words in Topic</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Topic Number </th>
   <th style="text-align:left;"> Top Twenty Words </th>
   <th style="text-align:left;"> Top Twenty FREX </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> (1) Employment &amp; unions </td>
   <td style="text-align:left;"> rights, workers, law, human, civil, trade, union, protection, employers, act, employment, unions, safety, employees, work, service, staff, employer, legislation, protect </td>
   <td style="text-align:left;"> tupe, blacklisting, acas, rights, gangmasters, civil, dispute, protections, unions, dismissal, servants, human, disputes, workers, employer, num, certification, employees, tuc, employers </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (2) Legal system </td>
   <td style="text-align:left;"> cases, court, legal, case, justice, law, courts, evidence, lord, appeal, system, criminal, judicial, investigation, judge, aid, prosecution, circumstances, trial, lawyers </td>
   <td style="text-align:left;"> judicial, attorney-general, court, prosecutor, judges, carlile, defendant, extradition, cps, judiciary, admissible, pre-charge, jury, solicitors, lawyers, solicitor, courts, lawyer, detention, judge </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (3) Roads </td>
   <td style="text-align:left;"> road, planning, site, land, sites, car, vehicles, residents, roads, safety, use, driving, vehicle, park, development, traffic, drivers, area, cars, speed </td>
   <td style="text-align:left;"> bikes, cyclists, pedestrians, gypsy, off-road, cycling, encampments, parking, highways, masts, drivers, belt, roads, highway, road, gypsies, vehicles, site, vehicle, bike </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (4) Housing </td>
   <td style="text-align:left;"> housing, homes, social, affordable, property, home, properties, london, accommodation, building, private, houses, tenants, rent, need, council, landlords, sector, buy, people </td>
   <td style="text-align:left;"> tenants, rent, landlords, rented, homelessness, rents, leaseholders, leasehold, tenancy, commonhold, hmos, housing, one-bedroom, homeless, properties, right-to-buy, affordable, sleepers, fulham, landlord </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (5) Police, firefighters &amp; prison </td>
   <td style="text-align:left;"> police, officers, crime, policing, service, fire, prison, home, force, chief, community, officer, staff, forces, neighbourhood, probation, prisons, safety, prisoners, resources </td>
   <td style="text-align:left;"> policing, firefighters, constables, pcsos, probation, csos, prisons, fire, constable, hmic, constabulary, officers, police, prison, prisoners, reoffending, neighbourhood, metropolitan, fires, ipcc </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (6) Northern Ireland </td>
   <td style="text-align:left;"> make, sure, progress, northern, decisions, ireland, difference, towards, future, process, contribution, statement, responsibilities, easier, responsibility, must, departmental, belfast, friday, choices </td>
   <td style="text-align:left;"> sinn, fein, make, sure, belfast, northern, progress, ulster, difference, ireland, ruc, decisions, patten, dissident, departmental, taoiseach, antrim, imc, chastelain, dpps </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (7) Committee </td>
   <td style="text-align:left;"> committee, report, review, commission, independent, government, select, process, evidence, inquiry, scrutiny, recommendations, role, board, set, work, reports, public, published, parliament </td>
   <td style="text-align:left;"> committee's, select, inquiry, scrutiny, recommendations, committee, committees, independent, recommendation, panel, pre-legislative, report, chairman, review, reviews, scrutinise, inquiries, conclusions, publication, findings </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (8) Schools </td>
   <td style="text-align:left;"> schools, school, education, teachers, pupils, primary, children, standards, educational, special, secondary, parents, free, teacher, teaching, head, academies, academy, curriculum, good </td>
   <td style="text-align:left;"> schools, teachers, pupils, academies, pupil, grammar, classroom, leas, school's, academisation, school, teacher, bsf, academy, headteachers, ofsted, lea, literacy, curriculum, classrooms </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (9) Energy &amp; climate change </td>
   <td style="text-align:left;"> energy, climate, change, fuel, carbon, gas, power, emissions, waste, nuclear, prices, wind, green, environmental, electricity, oil, industry, efficiency, renewable, price </td>
   <td style="text-align:left;"> energy, carbon, electricity, renewable, renewables, solar, ofgem, greenhouse, co2, ccs, feed-in, biofuels, microgeneration, fossil, sellafield, decarbonisation, chp, shale, mw, bnfl </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (10) Defence </td>
   <td style="text-align:left;"> defence, forces, armed, afghanistan, service, military, personnel, army, security, troops, support, ministry, royal, veterans, british, force, capability, iraq, equipment, also </td>
   <td style="text-align:left;"> armed, veterans, mod, regiment, legion, servicemen, reservists, helmand, battalion, ta, hms, gurkhas, regiments, marines, gurkha, fusiliers, ex-service, eurofighter, isaf, afghan </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (11) Parliament </td>
   <td style="text-align:left;"> house, leader, motion, commons, therefore, parliament, petition, parliamentary, government, urge, present, signed, table, notes, library, behalf, remain, floor, westminster, request </td>
   <td style="text-align:left;"> petitioners, declares, petition, house, motion, urges, commons, serjeant, recess, notes, leader, motions, lobbyist, thursday, early-day, e-petitions, house's, tuesday, session, lobbying </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (12) International politics </td>
   <td style="text-align:left;"> united, states, agreement, kingdom, foreign, treaty, council, security, us, nuclear, president, co-operation, convention, nations, national, policy, article, russia, international, position </td>
   <td style="text-align:left;"> lisbon, ratification, treaty, non-proliferation, treaties, qmv, ratified, veto, gibraltar, ukraine, russia, agreement, protocol, states, united, ratify, russian, kingdom's, hague, disarmament </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (13) Ministers </td>
   <td style="text-align:left;"> secretary, state, statement, ministers, today, confirm, department, government's, explain, yesterday, home, plans, announcement, government, welcome, chief, state's, urgent, ministerial, announced </td>
   <td style="text-align:left;"> secretary, state, state's, confirm, ministers, yesterday, announcement, ministerial, explain, statement, expects, urgent, intends, assurances, yesterday's, secretaries, secretary's, update, leaked, cabinet </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (14) Policy impact </td>
   <td style="text-align:left;"> made, clear, number, decision, impact, changes, recent, assessment, effect, level, discussions, likely, proposed, colleagues, potential, representations, implications, analysis, effects, result </td>
   <td style="text-align:left;"> made, clear, decision, assessment, recent, changes, impact, representations, implications, effect, discussions, analysis, assess, implementation, estimate, level, number, negative, outcome, colleagues </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (15) Gender </td>
   <td style="text-align:left;"> women, men, violence, equality, domestic, age, discrimination, women's, equal, pay, woman, girls, gender, sexual, sex, female, gap, government, maternity, male </td>
   <td style="text-align:left;"> women's, gender, transgender, breastfeeding, refuges, women, abortions, fgm, shortlists, female, male, equality, girls, all-women, gay, equalities, lesbian, men, pregnancy, fawcett </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (16) Regional development </td>
   <td style="text-align:left;"> new, development, future, programme, national, strategy, government, regional, key, plan, department, welcome, paper, set, ensure, commitment, support, improve, need, deliver </td>
   <td style="text-align:left;"> strategy, regional, programme, projects, paper, plan, project, deliver, white, key, development, delivering, develop, priorities, partnership, improve, framework, new, priority, improving </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (17) Communications </td>
   <td style="text-align:left;"> office, post, bank, banks, rural, offices, services, service, royal, banking, network, mail, closure, access, areas, broadband, card, account, staff, closures </td>
   <td style="text-align:left;"> offices, mail, sub-postmasters, sub-post, superfast, post, postwatch, postcomm, consignia, broadband, rbs, office, banking, mail's, bank, lloyds, ons, uso, branches, banks </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (18) Immigration </td>
   <td style="text-align:left;"> british, uk, rules, home, immigration, citizens, asylum, identity, status, country, overseas, application, indicated, applications, apply, border, abroad, cards, migration, entry </td>
   <td style="text-align:left;"> passports, nationality, dissent, immigration, passport, indicated, points-based, identity, asylum, nationals, visa, dependencies, migration, migrants, biometric, overseas, citizen, entry, abroad, monarch </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (19) Health system </td>
   <td style="text-align:left;"> health, nhs, hospital, service, patients, services, mental, trust, staff, hospitals, care, trusts, patient, primary, waiting, doctors, nurses, e, gp, emergency </td>
   <td style="text-align:left;"> in-patient, helier, nurses, chcs, nhs, ccgs, ccg, sha, hospital's, hospital, fundholding, pct, hospitals, mental, gp, healthwatch, orthopaedic, walk-in, trusts, reconfiguration </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (20) International development </td>
   <td style="text-align:left;"> international, countries, world, aid, development, government, developing, africa, global, uk, support, trade, poverty, country, india, assistance, un, need, also, nations </td>
   <td style="text-align:left;"> zimbabwe, dfid, burma, congo, cdc, kenya, burmese, doha, uganda, mugabe, sub-saharan, g8, zimbabwean, dfid's, gleneagles, african, sri, lanka, cancun, nigeria </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (21) Benefits &amp; disability </td>
   <td style="text-align:left;"> people, benefit, work, benefits, disabled, support, allowance, welfare, employment, disability, system, government, help, universal, credit, reform, get, vulnerable, plus, living </td>
   <td style="text-align:left;"> incapacity, dla, esa, jobcentre, disabled, jobseeker's, jsa, disability, allowance, dwp, claimants, atos, benefit, plus, claiming, pip, motability, benefits, deaf, bedroom </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (22) Sport &amp; culture </td>
   <td style="text-align:left;"> city, centre, town, sport, football, community, liverpool, sports, club, constituency, clubs, culture, london, great, facilities, one, bid, games, towns, regeneration </td>
   <td style="text-align:left;"> football, olympic, museum, museums, stadium, athletes, cricket, paralympic, games, gospels, sports, club, sporting, fans, cup, rugby, arts, olympics, sport, galleries </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (23) History </td>
   <td style="text-align:left;"> history, former, world, tribute, great, day, never, proud, first, remember, new, john, campaign, century, parliament, pay, also, war, today, sir </td>
   <td style="text-align:left;"> maiden, miners, memorial, predecessors, hillsborough, tony, martin, james, john, william, andrew, margaret, anniversary, peter, alan, memories, fought, harold, churchill, edward </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (24) Higher education &amp; skills </td>
   <td style="text-align:left;"> education, skills, students, university, training, higher, young, universities, college, learning, science, apprenticeships, colleges, fees, student, funding, research, system, qualifications, courses </td>
   <td style="text-align:left;"> universities, student, apprenticeship, fe, graduates, ema, graduate, students, colleges, diploma, apprenticeships, vocational, leitch, esol, qualifications, courses, undergraduate, university, tuition, sixth-form </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (25) Concurring point </td>
   <td style="text-align:left;"> point, agree, country, making, makes, absolutely, whole, much, good, part, friend's, entirely, completely, kind, sense, giving, rather, share, precisely, parts </td>
   <td style="text-align:left;"> agree, absolutely, makes, friend's, point, precisely, making, entirely, completely, kind, whole, sense, direction, mentions, refers, gentleman's, describes, powerful, danger, exactly </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (26) Pensions </td>
   <td style="text-align:left;"> scheme, pension, credit, pensions, insurance, schemes, pensioners, payments, compensation, fund, payment, money, financial, paid, savings, debt, retirement, government, pay, income </td>
   <td style="text-align:left;"> pension, annuity, policyholders, annuities, auto-enrolment, insurance, retirement, loan, payments, payday, scheme, compensation, equitable, premiums, payment, pensions, means-testing, lenders, savers, pensioners </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (27) Points of order </td>
   <td style="text-align:left;"> question, order, mr, put, speaker, deputy, point, grateful, read, agreed, record, time, minutes, may, call, standing, correct, apologise, madam, interventions </td>
   <td style="text-align:left;"> speaker, mr, madam, question, forthwith, deputy, apologise, order, o'clock, read, minutes, adjourned, accordingly, interventions, hansard, tomorrow, grateful, misled, correct, courtesy </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (28) Issues </td>
   <td style="text-align:left;"> important, issue, can, issues, take, ensure, hope, need, matter, consider, possible, place, also, concerns, deal, particular, course, taken, concern, raised </td>
   <td style="text-align:left;"> issues, issue, important, concerns, consider, possible, discuss, concern, particular, matter, considering, carefully, assure, understand, extremely, raised, addressed, obviously, address, expressed </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (29) Constituencies </td>
   <td style="text-align:left;"> many, constituency, constituents, problems, welcome, particularly, people, often, hard, face, others, feel, country, especially, worked, pay, concerned, represent, thousands, large </td>
   <td style="text-align:left;"> many, constituents, problems, hard, mine, worked, difficulties, faced, represent, feel, constituencies, thousands, hundreds, face, greatly, often, constituency, especially, worried, experienced </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (30) Ethnic groups &amp; racism </td>
   <td style="text-align:left;"> action, taking, community, steps, taken, communities, take, actions, society, prevent, faith, groups, minority, church, black, ethnic, religious, freedom, race, diversity </td>
   <td style="text-align:left;"> religion, faiths, sikh, steps, racial, faith, sikhs, religious, priests, synod, beliefs, church, racism, taking, action, ethnic, anglican, hate, clergy, hatred </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (31) Amendments </td>
   <td style="text-align:left;"> clause, amendment, amendments, new, lords, section, 1, tabled, 2, clauses, line, 3, leave, act, shall, move, beg, 4, page, schedule </td>
   <td style="text-align:left;"> insert, nos, subsection1, amendmenta, amendment, subsection5, 1a, schedule, amendmentsa, amendments, subsection2, subsection6, clause, tabled, paragrapha, subsection, subsection3, andc, paragraphb, clauses </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (32) Reports </td>
   <td style="text-align:left;"> year, since, report, number, figures, official, march, april, published, 1997, figure, statistics, 15, 30, show, january, 2010, july, june, december </td>
   <td style="text-align:left;"> vol, october, march, official, february, july, january, november, june, april, 2011, statistics, since, 2009, 2007, december, 2005, figures, 2013, figure </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (33) People </td>
   <td style="text-align:left;"> people, want, get, one, go, can, think, see, need, know, say, things, much, like, good, going, problem, done, something, put </td>
   <td style="text-align:left;"> things, get, something, go, lot, want, talking, thing, trying, talk, think, really, quite, bit, else, happen, away, getting, enough, idea </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (34) Wales &amp; Scotland </td>
   <td style="text-align:left;"> wales, scotland, scottish, england, welsh, assembly, parliament, devolution, uk, devolved, government, powers, kingdom, national, english, united, glasgow, executive, snp, edinburgh </td>
   <td style="text-align:left;"> scotland, scottish, welsh, snp, scotland's, cymru, barnett, plaid, perth, wishart, holyrood, perthshirepete, wales, snp's, assembly, devolved, dundee, scots, devolution, calman </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (35) Alcohol &amp; tobacco </td>
   <td style="text-align:left;"> food, industry, alcohol, licensing, products, smoking, shops, shop, tobacco, advertising, health, standards, pub, pubs, high, buy, drinking, supermarkets, problem, retailers </td>
   <td style="text-align:left;"> tobacco, pubs, gambling, betting, labelling, drinks, cigarettes, casinos, smokers, cigarette, groceries, lap-dancing, vending, drinkers, supermarkets, fluoride, smoking, pubcos, pub, retailers </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (36) Place names </td>
   <td style="text-align:left;"> thank, south, constituency, north, excellent, join, congratulate, manchester, area, yorkshire, north-west, reply, visit, greater, visited, also, bristol, nottingham, giving, region </td>
   <td style="text-align:left;"> thank, wrexham, reddish, tameside, congratulating, newport, yorkshire, stockport, blaenau, derbyshire, south, north-west, stoke-on-trent, denbighshire, denton, nottingham, bristol, welcoming, newingtonms, congratulations </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (37) Budget </td>
   <td style="text-align:left;"> million, budget, year, billion, cuts, chancellor, spending, cut, increase, money, government, 1, funding, extra, next, investment, deficit, financial, crisis, growth </td>
   <td style="text-align:left;"> deficit, obr, billion, spending, budget, real-terms, forecast, million, borrowing, cuts, gdp, chancellor, cut, 2.5, chancellor's, forecasts, 2010-11, 1.2, 1.5, finances </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (38) Tax </td>
   <td style="text-align:left;"> tax, pay, rate, income, wage, families, minimum, living, low, poverty, working, vat, increase, government, paid, national, paying, credits, average, poorest </td>
   <td style="text-align:left;"> tax, millionaires, 50p, vat, taxes, credits, wage, taxation, avoidance, incomes, rate, zero-hours, wages, 45p, earning, revaluation, income, richest, earners, regressive </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (39) Private companies </td>
   <td style="text-align:left;"> companies, company, market, financial, industry, competition, consumers, interest, consumer, assets, services, profits, markets, ownership, regulator, share, corporate, interests, customers, societies </td>
   <td style="text-align:left;"> mutuals, shareholders, provident, company, companies, competition, profits, corporate, shares, company's, societies, co-operative, fsa, co-operatives, profit, directors, rock, regulator, assets, asset </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (40) Environment &amp; fishing </td>
   <td style="text-align:left;"> environment, sea, fishing, marine, fisheries, industry, natural, fish, port, environmental, water, ports, rural, coastal, protection, conservation, fishermen, areas, management, area </td>
   <td style="text-align:left;"> fishing, fisheries, fishermen, cod, seas, whitby, coastguard, broads, cfp, angling, seafarers, anglers, inshore, discards, mmo, under-10, sssis, dredging, cockle, aonbs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (41) Crime </td>
   <td style="text-align:left;"> crime, behaviour, victims, offence, criminal, serious, abuse, offences, antisocial, home, use, measures, drugs, drug, enforcement, offenders, problem, tackle, law, justice </td>
   <td style="text-align:left;"> sentences, asbos, cannabis, antisocial, offences, offence, trafficking, gangs, behaviour, penalty, sentencing, sentence, theft, criminals, custodial, offending, knife, heroin, offenders, victim </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (42) Bills </td>
   <td style="text-align:left;"> bill, legislation, act, new, powers, provisions, regulations, power, place, provision, duty, apply, statutory, necessary, allow, provide, set, already, introduce, require </td>
   <td style="text-align:left;"> provisions, bill, bill's, definition, legislation, regulations, statutory, passage, seeks, requirement, drafted, draft, statute, intention, safeguards, purpose, consult, legislative, amend, covered </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (43) Children </td>
   <td style="text-align:left;"> children, child, parents, families, children's, support, poverty, family, young, needs, parent, start, adoption, adults, vulnerable, early, contact, must, need, autism </td>
   <td style="text-align:left;"> autism, csa, looked-after, adoptive, child, adopters, children's, autistic, cafcass, nspcc, child's, children, parent, dyslexia, adoption, kinship, childcare, intercountry, parents, lone </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (44) Utilities &amp; PFI </td>
   <td style="text-align:left;"> public, private, sector, money, costs, cost, risk, value, management, service, water, government, contracts, contract, system, audit, flood, systems, agency, taxpayer </td>
   <td style="text-align:left;"> id, flood, nao, ofwat, public, contracts, private, auditor, purse, contractors, audit, pac, pfi, flooding, taxpayer, floods, contract, comptroller, tendering, defences </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (45) Middle East </td>
   <td style="text-align:left;"> security, government, peace, war, foreign, people, iraq, terrorism, international, conflict, threat, support, must, un, military, syria, israel, resolution, terrorist, refugees </td>
   <td style="text-align:left;"> syria, israel, palestinian, israeli, gaza, palestinians, syrian, saddam, arab, hamas, saudi, daesh, palestine, isil, israelis, hussein, lebanon, atrocities, assad, two-state </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (46) Local authorities </td>
   <td style="text-align:left;"> local, authorities, council, authority, areas, government, funding, area, councils, communities, county, grant, planning, community, central, formula, borough, locally, level, resources </td>
   <td style="text-align:left;"> local, authorities, councillors, councils, authority, unitary, county, formula, grant, lga, locally, localism, swindon, allocations, allocation, deprived, council, parish, authority's, deprivation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (47) Elections </td>
   <td style="text-align:left;"> vote, political, parliament, electoral, election, elections, elected, parties, people, voting, referendum, democracy, register, system, registration, democratic, commission, party, votes, majority </td>
   <td style="text-align:left;"> electoral, voters, turnout, voter, all-postal, votes, vote, voting, polling, first-past-the-post, av, referendums, elections, unelected, registration, ballot, candidates, electors, electorate, elected </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (48) Debate </td>
   <td style="text-align:left;"> members, debate, speech, heard, today, hope, opportunity, speak, hear, chamber, great, wish, support, time, pleased, debates, sides, like, follow, subject </td>
   <td style="text-align:left;"> debate, speech, members, debates, speeches, speak, heard, listened, sides, debating, hear, speaking, tonight, pleasure, chamber, thoughtful, listening, afternoon, queen's, cross-party </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (49) Transport </td>
   <td style="text-align:left;"> london, transport, rail, bus, services, line, network, travel, airport, train, air, service, passengers, trains, railway, station, east, capacity, passenger, heathrow </td>
   <td style="text-align:left;"> rail, bus, passengers, trains, passenger, heathrow, railways, fares, freight, crossrail, hs2, high-speed, runway, electrification, airlines, gatwick, caa, baa, sra, thameslink </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (50) Questions </td>
   <td style="text-align:left;"> whether, information, may, answer, asked, ask, questions, response, available, advice, received, data, know, press, written, letter, department, meeting, details, officials </td>
   <td style="text-align:left;"> answer, information, questions, answers, data, written, details, letter, write, ask, officials, answered, asked, whether, informed, press, website, correspondence, response, requests </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (51) Families </td>
   <td style="text-align:left;"> family, life, families, lives, constituent, death, home, people, told, case, one, man, died, lost, mrs, person, mother, day, marriage, suffered </td>
   <td style="text-align:left;"> husband, mum, daughter, constituent, married, mrs, son, mother, marriage, died, father, wife, same-sex, death, loved, dad, suicide, funeral, bereaved, boy </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (52) Health research </td>
   <td style="text-align:left;"> research, treatment, cancer, medical, disease, health, drugs, condition, can, use, drug, patients, screening, risk, also, conditions, evidence, group, diseases, diagnosis </td>
   <td style="text-align:left;"> screening, asbestos, tissue, embryos, cancers, hepatitis, genetic, prostate, epilepsy, cloning, pleural, fertilisation, embryo, embryonic, ivf, anaemia, embryology, piercing, hfea, bowel </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (53) Dispatch box </td>
   <td style="text-align:left;"> back, come, look, forward, bring, moment, coming, comes, side, later, brought, along, bringing, round, looking, box, see, putting, sit, dispatch </td>
   <td style="text-align:left;"> come, back, look, moment, forward, dispatch, coming, comes, side, box, oh, surprise, bring, round, hoping, bringing, sooner, straight, along, sit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (54) Parties </td>
   <td style="text-align:left;"> government, labour, conservative, party, opposition, policy, previous, liberal, conservatives, government's, support, election, tory, front, democrats, coalition, benches, policies, general, fact </td>
   <td style="text-align:left;"> conservative, conservatives, liberal, democrats, lib, tory, democrat, benches, tories, opposition, manifesto, party's, labour, benchers, dem, opposition's, front-bench, party, spokesman, bench </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (55) Statements </td>
   <td style="text-align:left;"> us, said, just, let, say, now, tell, says, yet, saying, told, know, going, nothing, wrong, even, wants, words, minister's, today </td>
   <td style="text-align:left;"> tell, says, let, wants, us, actually, saying, minister's, telling, truth, wrong, wonder, thinks, nothing, promise, afraid, mistake, blame, admit, honest </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (56) European Union </td>
   <td style="text-align:left;"> european, eu, europe, union, uk, countries, britain, trade, single, british, negotiations, market, economic, france, germany, country, leave, membership, referendum, world </td>
   <td style="text-align:left;"> euro, ttip, brexit, accession, eu, currencies, cypriots, european, eurozone, europe, enlargement, pro-european, spain, currency, esm, france, greece, italy, brussels, isds </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (57) Locations </td>
   <td style="text-align:left;"> member, west, east, north, birmingham, friends, st, spoke, hull, sheffield, talked, leeds, leicester, midlands, upon, newcastle, westmr, eastmr, northmr, southmr </td>
   <td style="text-align:left;"> kingston, eastmr, bromley, chislehurstmr, holborn, dorsetmr, northmr, enfield, hull, southmr, chislehurst, stuart, ealing, rees-mogg, leicester, chingford, westmr, greenmr, southend, letwin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (58) Jobs &amp; manufacturing </td>
   <td style="text-align:left;"> jobs, economy, economic, growth, industry, unemployment, investment, government, uk, manufacturing, future, sector, employment, country, job, long-term, steel, north-east, industries, recession </td>
   <td style="text-align:left;"> steel, manufacturing, jobs, tata, economy, teesside, unemployment, recession, automotive, downturn, steelworkers, productivity, inward, growth, industries, recessions, nissan, economic, steelworks, double-dip </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (59) Small business </td>
   <td style="text-align:left;"> business, small, businesses, regulation, rates, enterprise, government, finance, support, firms, help, innovation, measures, regulatory, smaller, large, lending, enterprises, burden, larger </td>
   <td style="text-align:left;"> smes, medium-sized, businesses, business, enterprises, small, regulation, enterprise, commerce, entrepreneurs, tape, firms, lending, burdens, brs, start-up, start-ups, entrepreneurial, lend, smaller </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (60) Agreement &amp; disagreement </td>
   <td style="text-align:left;"> believe, however, one, might, accept, must, different, case, system, view, change, think, whether, position, argument, rather, simply, reason, basis, although </td>
   <td style="text-align:left;"> accept, argument, principle, view, arguments, reason, might, argue, perfectly, suggest, balance, believe, suggesting, different, reasons, necessarily, sensible, disagree, argued, whatever </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (61) Voluntary sector </td>
   <td style="text-align:left;"> work, people, young, support, help, can, working, organisations, role, voluntary, ensure, together, good, also, need, important, encourage, opportunities, experience, society </td>
   <td style="text-align:left;"> voluntary, organisations, charities, volunteering, young, charity, youth, work, opportunities, helping, encourage, volunteers, encouraging, play, charitable, working, help, ways, valuable, together </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (62) Comments </td>
   <td style="text-align:left;"> member, said, shall, mentioned, earlier, points, lady, comments, referred, learned, intervention, remarks, interesting, raised, pointed, perhaps, gave, say, refer, described </td>
   <td style="text-align:left;"> comments, remarks, lady, interesting, points, happily, southwark, referred, bermondsey, referring, somerton, intervention, shall, intervened, mentioned, pointed, learned, earlier, gentlemen, rushcliffemr </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (63) Social care </td>
   <td style="text-align:left;"> care, services, social, carers, people, need, service, needs, support, provision, older, provide, quality, home, centres, access, elderly, provided, providers, homes </td>
   <td style="text-align:left;"> carers, hospices, dentists, dental, care, dementia, hospice, dentistry, respite, carer, advocacy, elderly, older, caring, palliative, milton, dentist, social, keynes, cared </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (64) Time </td>
   <td style="text-align:left;"> years, time, last, two, one, first, now, three, past, week, months, next, ago, every, 10, five, four, weeks, days, six </td>
   <td style="text-align:left;"> years, three, two, last, months, ago, past, time, four, week, weeks, six, five, first, next, days, 10, seven, half, now </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (65) Media &amp; animals </td>
   <td style="text-align:left;"> bbc, farmers, digital, television, internet, animals, animal, media, radio, dogs, licence, dog, news, ban, farming, welfare, hunting, fee, online, farm </td>
   <td style="text-align:left;"> bbc, dogs, hunting, cull, bbc's, badgers, badger, bovine, switchover, broadcasters, gm, fur, mink, poultry, circuses, analogue, hare, hounds, puppies, swine </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (66) Other </td>
   <td style="text-align:left;"> given, can, aware, may, recently, across, welcome, fact, government, well, take, close, result, seeking, indeed, support, confident, responsible, know, including </td>
   <td style="text-align:left;"> given, aware, can, recently, may, across, close, welcome, fact, confident, seeking, result, well, take, responsible, indeed, keep, regret, far, reconsider </td>
  </tr>
</tbody>
</table>


### Manual Validation

We have validated both the topics produced by the model and our labels of those topics to ensure the topics themselves are both interesting and relevant. Validation is particularly important in unsupervised models including STM [@grimmer2013]. @quinn2010 suggest that topics are valid if they correspond to external events. Figure \@ref(fig:middle-east-plot) shows the number of speeches by Labour MPs on the "Middle East" topic, with a spike in 2003 (at the start of the Iraq War), another spike in 2008 and 2009, as the bulk of British troops left Iraq, a small spike in 2011 coinciding with UK participation in NATO's military intervention in Libya, and another spike resulting from debate in 2014--2016 over UK participation in military interventions in the Syrian Civil War. 

Figure \@ref(fig:wales-scotland-plot) shows debate over the devolved authorities of Wales and Scotland peaking in 2014, to coincide with Scotland's independence referendum. The post-2015 decline also likely stems from the SNP winning all but three seats in Scotland during the 2015 General Election. Figure \@ref(fig:eu-plot) shows the increase in debate over the European Union coinciding with the referendum on the UK's member of the European Union. 



<div class="figure">
<img src="methodology_files/figure-html/middle-east-plot-1.png" alt="Number of Speeches in &quot;Middle East&quot; Topic per Year"  />
<p class="caption">(\#fig:middle-east-plot)Number of Speeches in "Middle East" Topic per Year</p>
</div>

<div class="figure">
<img src="methodology_files/figure-html/wales-scotland-plot-1.png" alt="Number of Speeches in &quot;Wales &amp; Scotland&quot; Topic per Year"  />
<p class="caption">(\#fig:wales-scotland-plot)Number of Speeches in "Wales & Scotland" Topic per Year</p>
</div>

<div class="figure">
<img src="methodology_files/figure-html/eu-plot-1.png" alt="Number of Speeches in &quot;European Union&quot; Topic per Year"  />
<p class="caption">(\#fig:eu-plot)Number of Speeches in "European Union" Topic per Year</p>
</div>


## Differences between Male, AWS and non-AWS Labour MPs





From Table \@ref(tab:estimate-table-k0) we can see the relationship between the frequency of topics among AWS, non-AWS and male Labour MPs.

There are 11 topics where the frequency AWS MPs is significantly different from male MPs, but where its frequency amongst non-AWS MPs is not significantly different. They are topics 1, 6, 7, 8, 14, 17, 20, 26, 35, 36, 39. 5 topics are proportionally greater among AWS MPs (Topic 8, Schools, Topic 14, Policy impact, Topic 26, Pensions, Topic 35, Alcohol & tobacco, Topic 36, Place names) and 6 topics are less common (Topic 1, Employment & unions, Topic 6, Northern Ireland, Topic 7, Committee, Topic 17, Communications, Topic 20, International development, Topic 39, Private companies). 

There are 7 topics where its proportion amongst non-AWS MPs is significantly different from male MPs, but where its proportion amongst AWS MPs is not significantly different. They are topics 5, 16, 24, 37, 44, 46, 57. 5 topics are proportionally greater among AWS MPs (Topic 16, Regional development, Topic 37, Budget, Topic 44, Utilities & PFI, Topic 46, Local authorities, Topic 57, Locations) and 2 topics are less common (Topic 5, Police, firefighters & prison, Topic 24, Higher education & skills). 

There is 1 topic (Topic 50, Questions) where there is no significant difference in frequency among both AWS and non-AWS MPS, relative to male Labour MPs.

There are 10 topics where AWS and non-AWS MPs differ significantly in proportion from male Labour MPs, but are not both higher/lower than male MPs. AWS MPs are significantly more likely to mention 5 topics (Topic 13, Ministers, Topic 22, Sport & culture, Topic 38, Tax, Topic 49, Transport, Topic 58, Jobs & manufacturing) than male MPs, while non-AWS mps are significantly less likely to mention those topics. The opposite is true for the other 5 topics (Topic 2, Legal system, Topic 18, Immigration, Topic 28, Issues, Topic 42, Bills, Topic 59, Small business), which AWS MPs are significantly less likely and non-AWS MPs are significantly more likely to mention than male Labour MPs.

However, an estimate being statistically significant -- i.e. estimates for AWS and non-AWS MPs where the _p_ value as reported in Table \@ref(tab:estimate-table-k0) is < 0.05 -- does not tell us anything about the relative value of those frequency differences. For example, in topic 21, Benefits and disability, frequency estimates for both AWS and non-AWS MPs are  significantly different (_p_ < 0.05) from the frequency estimate for male Labour MPs. However, while the frequency value for the benefits and disability topic is 1.20% for male MPs, and 1.30% for non-AWS MPs, it is 2.41% for AWS MPs. Non-AWS Labour MPs are only slightly more likely to bring up benefits and disability than male Labour MPs, while AWS MPs discuss it almost twice as much as their male colleagues. 

Figure \@ref(fig:p-effect1) shows the frequency for the topics where AWS and non-AWS MPs differ the most. Figure \@ref(fig:p-effect2) shows the frequency for the topics where AWS and non-AWS MPs are most similar to each other, regardless of their similarity to male Labour MPs. Figure \@ref(fig:p-effect-cv) is the topics with the most variation, between AWS, non-AWS and male Labour MPs. Figures \@ref(fig:p-effect1), \@ref(fig:p-effect2) and \@ref(fig:p-effect-cv) all use the coefficient of variation to measure variance between each group of MPs. Figures \@ref(fig:p-effect1) and \@ref(fig:p-effect2) only use female Labour MPS, Figure \@ref(fig:p-effect-cv) uses all three groups. Errors bars in all three sets of figures are for 95% confidence intervals.

<div class="figure">
<img src="methodology_files/figure-html/p-effect1-1.png" alt="Where AWS MPs are most distinct from non-AWS female MPs"  />
<p class="caption">(\#fig:p-effect1)Where AWS MPs are most distinct from non-AWS female MPs</p>
</div>


<div class="figure">
<img src="methodology_files/figure-html/p-effect2-1.png" alt="Where AWS MPs are most similar to non-AWS female MPs"  />
<p class="caption">(\#fig:p-effect2)Where AWS MPs are most similar to non-AWS female MPs</p>
</div>


<div class="figure">
<img src="methodology_files/figure-html/p-effect-cv-1.png" alt="Topics with the greatest frequency coefficient of variation"  />
<p class="caption">(\#fig:p-effect-cv)Topics with the greatest frequency coefficient of variation</p>
</div>


# Discussion

There do not appear to be substantial or meaningful differences in the speaking styles of female Labour MPs selected through all women shortlists when compared to their female colleagues selected through open shortlists using LIWC. This is possibly due to the speaking style dominant in British parliamentary debate, which is more formal than the speech used in most day-to-day conversation. LIWC was developed by American researchers, and the LIWC dictionary may not be able to capture stylistic differences between American and British English, and may not include words commonly used in formal British English speech, limiting its usefulness in the context of British political debate.

There is more distinction between AWS and non-AWS MPs in terms and topics. [Naive Bayes classification](# Naive Bayes classification) was able to accurately determine the AWS status of female Labour MPs with slightly greater accuracy than it could distinguish between male and female Labour MPs (71.22% and 70.67%, respectively).

AWS MPs are far more likely to make reference to their constituency and constituents. In the debate between whether MPs should be "delegates" or "trustees" -- the "mandate-independence controversy" outlined by @pitkin1967 -- the references to their constituents and constituencies suggests AWS MPs shy away from the Burkean concept of trusteeship and see themselves more as strict representatives of their constituents. In Andeweg & Thomassen's [-@andeweg2005] typology of _ex ante_/_ex post_ and above/below political representation, AWS MPs lean towards representation "from below", although their selection process is _ex ante_/_ex post_. AWS MPs also use events and individuals in their constituency as examples when speaking on a given topic (see the [Appendix](# AWS References to Constituents in Context) for more examples).

AWS MPs refer to their constituents both specifically and in the abstract, particularly when criticising government policy. For example, in debate on 4th March 2015, Gemma Doyle, than the Labour MP for West Dunbartonshire (elected on an AWS in 2010), when asked if she would give way to Conservative MP Stephen Mosley, responded:

>No, I will not [give way], because my constituents want me to make these points, not to give more time to Conservative Members.

On 2nd June 2010, during debate on Israel-Palestine, Valerie Vaz, MP for Walsall South, also used the views of her constituents to support her position:

>My constituents want more than pressure. Will the Foreign Secretary come back to the House and report on a timetable for the discussions on a diplomatic solution, just as we did on Ireland?

On 4th April 2001, Betty Williams, member for Conwy from 1997--2010, raised the case of a wilderness guide in her constituency unable to access parts of the countryside due to foot and mouth disease:

>Is my right hon. Friend aware that there is continuing concern about the limited access to the countryside and crags of north Wales? May I draw his attention to the circumstances of my constituent, Ric Potter? Like many others, he has had to travel to Scotland, where there is greater access. Will my right hon. Friend help us to enable people such as Ric Potter to find work in outdoor pursuits?

\clearpage


# Appendix

## Gender effect estimates

Estimate effects of different topics, using only gender (Table \@ref(tab:estimate-table-gender)).

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:estimate-table-gender)Topic Estimates (Gender)</caption>
 <thead>
  <tr>
   <th style="text-align:left;">  </th>
   <th style="text-align:right;">  </th>
   <th style="text-align:right;"> Estimate </th>
   <th style="text-align:right;"> Standard Error </th>
   <th style="text-align:right;"> t value </th>
   <th style="text-align:left;"> Pr(&gt;|t|) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (1) Employment &amp; unions </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0120561 </td>
   <td style="text-align:right;"> 0.0001233 </td>
   <td style="text-align:right;"> 97.7458509 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0009786 </td>
   <td style="text-align:right;"> 0.0002204 </td>
   <td style="text-align:right;"> -4.4396315 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (2) Legal system </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0167102 </td>
   <td style="text-align:right;"> 0.0001677 </td>
   <td style="text-align:right;"> 99.6358100 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0001861 </td>
   <td style="text-align:right;"> 0.0002867 </td>
   <td style="text-align:right;"> 0.6492618 </td>
   <td style="text-align:left;"> 0.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (3) Roads </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0116864 </td>
   <td style="text-align:right;"> 0.0001469 </td>
   <td style="text-align:right;"> 79.5274864 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0018110 </td>
   <td style="text-align:right;"> 0.0002574 </td>
   <td style="text-align:right;"> -7.0349793 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (4) Housing </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0112593 </td>
   <td style="text-align:right;"> 0.0001746 </td>
   <td style="text-align:right;"> 64.4711132 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0054870 </td>
   <td style="text-align:right;"> 0.0002870 </td>
   <td style="text-align:right;"> 19.1204992 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (5) Police, firefighters &amp; prison </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0140238 </td>
   <td style="text-align:right;"> 0.0001747 </td>
   <td style="text-align:right;"> 80.2546259 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0008970 </td>
   <td style="text-align:right;"> 0.0002998 </td>
   <td style="text-align:right;"> 2.9917221 </td>
   <td style="text-align:left;"> 0.003 ** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (6) Northern Ireland </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0089592 </td>
   <td style="text-align:right;"> 0.0000450 </td>
   <td style="text-align:right;"> 198.8903532 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0002231 </td>
   <td style="text-align:right;"> 0.0000821 </td>
   <td style="text-align:right;"> -2.7163043 </td>
   <td style="text-align:left;"> 0.007 ** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (7) Committee </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0213132 </td>
   <td style="text-align:right;"> 0.0001509 </td>
   <td style="text-align:right;"> 141.2139750 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0015245 </td>
   <td style="text-align:right;"> 0.0002307 </td>
   <td style="text-align:right;"> -6.6073185 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (8) Schools </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0147366 </td>
   <td style="text-align:right;"> 0.0001975 </td>
   <td style="text-align:right;"> 74.6029960 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0009898 </td>
   <td style="text-align:right;"> 0.0003519 </td>
   <td style="text-align:right;"> 2.8128100 </td>
   <td style="text-align:left;"> 0.005 ** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (9) Energy &amp; climate change </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0170286 </td>
   <td style="text-align:right;"> 0.0002027 </td>
   <td style="text-align:right;"> 84.0111642 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0026669 </td>
   <td style="text-align:right;"> 0.0003638 </td>
   <td style="text-align:right;"> -7.3306532 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (10) Defence </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0157819 </td>
   <td style="text-align:right;"> 0.0001837 </td>
   <td style="text-align:right;"> 85.9128350 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0061172 </td>
   <td style="text-align:right;"> 0.0003240 </td>
   <td style="text-align:right;"> -18.8794191 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (11) Parliament </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0119042 </td>
   <td style="text-align:right;"> 0.0000790 </td>
   <td style="text-align:right;"> 150.6173576 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0019543 </td>
   <td style="text-align:right;"> 0.0001429 </td>
   <td style="text-align:right;"> -13.6787831 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (12) International politics </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0125948 </td>
   <td style="text-align:right;"> 0.0001249 </td>
   <td style="text-align:right;"> 100.8499998 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0050786 </td>
   <td style="text-align:right;"> 0.0002170 </td>
   <td style="text-align:right;"> -23.4024173 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (13) Ministers </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0167087 </td>
   <td style="text-align:right;"> 0.0001064 </td>
   <td style="text-align:right;"> 157.0415815 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0011454 </td>
   <td style="text-align:right;"> 0.0001923 </td>
   <td style="text-align:right;"> 5.9551523 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (14) Policy impact </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0115397 </td>
   <td style="text-align:right;"> 0.0000460 </td>
   <td style="text-align:right;"> 251.1090985 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0009556 </td>
   <td style="text-align:right;"> 0.0000875 </td>
   <td style="text-align:right;"> 10.9167682 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (15) Gender </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0048738 </td>
   <td style="text-align:right;"> 0.0001146 </td>
   <td style="text-align:right;"> 42.5372998 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0121863 </td>
   <td style="text-align:right;"> 0.0002379 </td>
   <td style="text-align:right;"> 51.2176906 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (16) Regional development </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0230313 </td>
   <td style="text-align:right;"> 0.0001276 </td>
   <td style="text-align:right;"> 180.4911579 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0026193 </td>
   <td style="text-align:right;"> 0.0002503 </td>
   <td style="text-align:right;"> 10.4645867 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (17) Communications </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0097462 </td>
   <td style="text-align:right;"> 0.0001202 </td>
   <td style="text-align:right;"> 81.0915937 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0009899 </td>
   <td style="text-align:right;"> 0.0002069 </td>
   <td style="text-align:right;"> -4.7848162 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (18) Immigration </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0087105 </td>
   <td style="text-align:right;"> 0.0000900 </td>
   <td style="text-align:right;"> 96.8147319 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0000391 </td>
   <td style="text-align:right;"> 0.0001635 </td>
   <td style="text-align:right;"> -0.2394474 </td>
   <td style="text-align:left;"> 0.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (19) Health system </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0161788 </td>
   <td style="text-align:right;"> 0.0001976 </td>
   <td style="text-align:right;"> 81.8627819 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0079743 </td>
   <td style="text-align:right;"> 0.0003600 </td>
   <td style="text-align:right;"> 22.1488945 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (20) International development </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0160465 </td>
   <td style="text-align:right;"> 0.0001897 </td>
   <td style="text-align:right;"> 84.5865773 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0020679 </td>
   <td style="text-align:right;"> 0.0003358 </td>
   <td style="text-align:right;"> -6.1579789 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (21) Benefits &amp; disability </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0120722 </td>
   <td style="text-align:right;"> 0.0001441 </td>
   <td style="text-align:right;"> 83.8028248 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0080944 </td>
   <td style="text-align:right;"> 0.0002832 </td>
   <td style="text-align:right;"> 28.5770350 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (22) Sport &amp; culture </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0127412 </td>
   <td style="text-align:right;"> 0.0001526 </td>
   <td style="text-align:right;"> 83.4724542 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0003753 </td>
   <td style="text-align:right;"> 0.0002649 </td>
   <td style="text-align:right;"> -1.4166824 </td>
   <td style="text-align:left;"> 0.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (23) History </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0137581 </td>
   <td style="text-align:right;"> 0.0001117 </td>
   <td style="text-align:right;"> 123.2082084 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0046801 </td>
   <td style="text-align:right;"> 0.0001833 </td>
   <td style="text-align:right;"> -25.5317143 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (24) Higher education &amp; skills </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0143325 </td>
   <td style="text-align:right;"> 0.0001641 </td>
   <td style="text-align:right;"> 87.3629912 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0004494 </td>
   <td style="text-align:right;"> 0.0003006 </td>
   <td style="text-align:right;"> -1.4950418 </td>
   <td style="text-align:left;"> 0.13 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (25) Concurring point </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0155213 </td>
   <td style="text-align:right;"> 0.0000474 </td>
   <td style="text-align:right;"> 327.6313660 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0026315 </td>
   <td style="text-align:right;"> 0.0000760 </td>
   <td style="text-align:right;"> -34.6035104 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (26) Pensions </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0147019 </td>
   <td style="text-align:right;"> 0.0001709 </td>
   <td style="text-align:right;"> 86.0482540 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0019874 </td>
   <td style="text-align:right;"> 0.0002808 </td>
   <td style="text-align:right;"> 7.0777074 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (27) Points of order </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0177894 </td>
   <td style="text-align:right;"> 0.0001316 </td>
   <td style="text-align:right;"> 135.2139528 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0054025 </td>
   <td style="text-align:right;"> 0.0002166 </td>
   <td style="text-align:right;"> -24.9447457 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (28) Issues </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0345025 </td>
   <td style="text-align:right;"> 0.0000980 </td>
   <td style="text-align:right;"> 352.1646087 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0006780 </td>
   <td style="text-align:right;"> 0.0001716 </td>
   <td style="text-align:right;"> 3.9511379 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (29) Constituencies </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0131800 </td>
   <td style="text-align:right;"> 0.0000540 </td>
   <td style="text-align:right;"> 244.1589822 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0023276 </td>
   <td style="text-align:right;"> 0.0001069 </td>
   <td style="text-align:right;"> 21.7824341 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (30) Ethnic groups &amp; racism </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0085781 </td>
   <td style="text-align:right;"> 0.0000728 </td>
   <td style="text-align:right;"> 117.8578866 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0019552 </td>
   <td style="text-align:right;"> 0.0001365 </td>
   <td style="text-align:right;"> 14.3196680 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (31) Amendments </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0150304 </td>
   <td style="text-align:right;"> 0.0001578 </td>
   <td style="text-align:right;"> 95.2713075 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0028669 </td>
   <td style="text-align:right;"> 0.0002705 </td>
   <td style="text-align:right;"> -10.5980156 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (32) Reports </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0169724 </td>
   <td style="text-align:right;"> 0.0001117 </td>
   <td style="text-align:right;"> 151.9867135 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0012779 </td>
   <td style="text-align:right;"> 0.0001865 </td>
   <td style="text-align:right;"> 6.8516021 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (33) People </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0377446 </td>
   <td style="text-align:right;"> 0.0001213 </td>
   <td style="text-align:right;"> 311.2792086 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0014521 </td>
   <td style="text-align:right;"> 0.0002123 </td>
   <td style="text-align:right;"> -6.8400753 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (34) Wales &amp; Scotland </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0135410 </td>
   <td style="text-align:right;"> 0.0001549 </td>
   <td style="text-align:right;"> 87.4194387 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0031743 </td>
   <td style="text-align:right;"> 0.0002506 </td>
   <td style="text-align:right;"> -12.6669967 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (35) Alcohol &amp; tobacco </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0108579 </td>
   <td style="text-align:right;"> 0.0001486 </td>
   <td style="text-align:right;"> 73.0683773 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0005320 </td>
   <td style="text-align:right;"> 0.0002832 </td>
   <td style="text-align:right;"> 1.8786468 </td>
   <td style="text-align:left;"> 0.060 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (36) Place names </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0083659 </td>
   <td style="text-align:right;"> 0.0000671 </td>
   <td style="text-align:right;"> 124.6776088 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0007972 </td>
   <td style="text-align:right;"> 0.0001241 </td>
   <td style="text-align:right;"> 6.4237856 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (37) Budget </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0246505 </td>
   <td style="text-align:right;"> 0.0001775 </td>
   <td style="text-align:right;"> 138.8996009 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0003435 </td>
   <td style="text-align:right;"> 0.0002961 </td>
   <td style="text-align:right;"> -1.1599722 </td>
   <td style="text-align:left;"> 0.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (38) Tax </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0193082 </td>
   <td style="text-align:right;"> 0.0001896 </td>
   <td style="text-align:right;"> 101.8596764 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0030544 </td>
   <td style="text-align:right;"> 0.0003310 </td>
   <td style="text-align:right;"> 9.2272811 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (39) Private companies </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0123871 </td>
   <td style="text-align:right;"> 0.0001199 </td>
   <td style="text-align:right;"> 103.3046194 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0009559 </td>
   <td style="text-align:right;"> 0.0002220 </td>
   <td style="text-align:right;"> -4.3062780 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (40) Environment &amp; fishing </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0094757 </td>
   <td style="text-align:right;"> 0.0001428 </td>
   <td style="text-align:right;"> 66.3605526 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0024801 </td>
   <td style="text-align:right;"> 0.0002435 </td>
   <td style="text-align:right;"> -10.1854049 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (41) Crime </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0141387 </td>
   <td style="text-align:right;"> 0.0001700 </td>
   <td style="text-align:right;"> 83.1774783 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0052430 </td>
   <td style="text-align:right;"> 0.0003115 </td>
   <td style="text-align:right;"> 16.8290865 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (42) Bills </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0244386 </td>
   <td style="text-align:right;"> 0.0001508 </td>
   <td style="text-align:right;"> 162.0410131 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0012130 </td>
   <td style="text-align:right;"> 0.0002557 </td>
   <td style="text-align:right;"> -4.7439287 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (43) Children </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0076822 </td>
   <td style="text-align:right;"> 0.0001213 </td>
   <td style="text-align:right;"> 63.3511535 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0094502 </td>
   <td style="text-align:right;"> 0.0002461 </td>
   <td style="text-align:right;"> 38.3935766 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (44) Utilities &amp; PFI </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0123659 </td>
   <td style="text-align:right;"> 0.0000838 </td>
   <td style="text-align:right;"> 147.6006401 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0001325 </td>
   <td style="text-align:right;"> 0.0001597 </td>
   <td style="text-align:right;"> -0.8294008 </td>
   <td style="text-align:left;"> 0.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (45) Middle East </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0174606 </td>
   <td style="text-align:right;"> 0.0002080 </td>
   <td style="text-align:right;"> 83.9606437 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0020795 </td>
   <td style="text-align:right;"> 0.0003607 </td>
   <td style="text-align:right;"> -5.7649929 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (46) Local authorities </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0179838 </td>
   <td style="text-align:right;"> 0.0001437 </td>
   <td style="text-align:right;"> 125.1849736 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0015586 </td>
   <td style="text-align:right;"> 0.0002836 </td>
   <td style="text-align:right;"> 5.4965933 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (47) Elections </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0181834 </td>
   <td style="text-align:right;"> 0.0001549 </td>
   <td style="text-align:right;"> 117.3877176 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0075879 </td>
   <td style="text-align:right;"> 0.0002715 </td>
   <td style="text-align:right;"> -27.9430467 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (48) Debate </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0180191 </td>
   <td style="text-align:right;"> 0.0000681 </td>
   <td style="text-align:right;"> 264.6774024 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0018256 </td>
   <td style="text-align:right;"> 0.0001238 </td>
   <td style="text-align:right;"> -14.7506463 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (49) Transport </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0163759 </td>
   <td style="text-align:right;"> 0.0001857 </td>
   <td style="text-align:right;"> 88.1991855 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0002969 </td>
   <td style="text-align:right;"> 0.0003477 </td>
   <td style="text-align:right;"> -0.8538425 </td>
   <td style="text-align:left;"> 0.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (50) Questions </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0161647 </td>
   <td style="text-align:right;"> 0.0000757 </td>
   <td style="text-align:right;"> 213.4856091 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0001682 </td>
   <td style="text-align:right;"> 0.0001301 </td>
   <td style="text-align:right;"> 1.2927442 </td>
   <td style="text-align:left;"> 0.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (51) Families </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0101120 </td>
   <td style="text-align:right;"> 0.0001164 </td>
   <td style="text-align:right;"> 86.8890866 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0044922 </td>
   <td style="text-align:right;"> 0.0002501 </td>
   <td style="text-align:right;"> 17.9608814 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (52) Health research </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0087873 </td>
   <td style="text-align:right;"> 0.0001603 </td>
   <td style="text-align:right;"> 54.8116345 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0050129 </td>
   <td style="text-align:right;"> 0.0002923 </td>
   <td style="text-align:right;"> 17.1518648 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (53) Dispatch box </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0075482 </td>
   <td style="text-align:right;"> 0.0000252 </td>
   <td style="text-align:right;"> 299.9335737 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0010058 </td>
   <td style="text-align:right;"> 0.0000411 </td>
   <td style="text-align:right;"> -24.4759297 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (54) Parties </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0248257 </td>
   <td style="text-align:right;"> 0.0001495 </td>
   <td style="text-align:right;"> 166.0099980 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0062183 </td>
   <td style="text-align:right;"> 0.0002451 </td>
   <td style="text-align:right;"> -25.3739370 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (55) Statements </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0211074 </td>
   <td style="text-align:right;"> 0.0000674 </td>
   <td style="text-align:right;"> 313.1127111 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0025215 </td>
   <td style="text-align:right;"> 0.0001226 </td>
   <td style="text-align:right;"> -20.5654157 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (56) European Union </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0163664 </td>
   <td style="text-align:right;"> 0.0001702 </td>
   <td style="text-align:right;"> 96.1683285 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0044278 </td>
   <td style="text-align:right;"> 0.0002939 </td>
   <td style="text-align:right;"> -15.0664007 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (57) Locations </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0100682 </td>
   <td style="text-align:right;"> 0.0001051 </td>
   <td style="text-align:right;"> 95.7956424 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0008438 </td>
   <td style="text-align:right;"> 0.0001896 </td>
   <td style="text-align:right;"> -4.4503909 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (58) Jobs &amp; manufacturing </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0176030 </td>
   <td style="text-align:right;"> 0.0001701 </td>
   <td style="text-align:right;"> 103.4783706 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0002215 </td>
   <td style="text-align:right;"> 0.0003125 </td>
   <td style="text-align:right;"> 0.7086483 </td>
   <td style="text-align:left;"> 0.48 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (59) Small business </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0070547 </td>
   <td style="text-align:right;"> 0.0000690 </td>
   <td style="text-align:right;"> 102.2200613 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0000227 </td>
   <td style="text-align:right;"> 0.0001167 </td>
   <td style="text-align:right;"> -0.1948699 </td>
   <td style="text-align:left;"> 0.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (60) Agreement &amp; disagreement </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0328354 </td>
   <td style="text-align:right;"> 0.0001082 </td>
   <td style="text-align:right;"> 303.3701317 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0102158 </td>
   <td style="text-align:right;"> 0.0001823 </td>
   <td style="text-align:right;"> -56.0338702 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (61) Voluntary sector </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0187326 </td>
   <td style="text-align:right;"> 0.0001134 </td>
   <td style="text-align:right;"> 165.1455528 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0075517 </td>
   <td style="text-align:right;"> 0.0002253 </td>
   <td style="text-align:right;"> 33.5146669 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (62) Comments </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0152785 </td>
   <td style="text-align:right;"> 0.0000587 </td>
   <td style="text-align:right;"> 260.3794919 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0036504 </td>
   <td style="text-align:right;"> 0.0000997 </td>
   <td style="text-align:right;"> -36.6196859 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (63) Social care </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0090888 </td>
   <td style="text-align:right;"> 0.0001324 </td>
   <td style="text-align:right;"> 68.6336761 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0080677 </td>
   <td style="text-align:right;"> 0.0002317 </td>
   <td style="text-align:right;"> 34.8179514 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (64) Time </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0213910 </td>
   <td style="text-align:right;"> 0.0000681 </td>
   <td style="text-align:right;"> 314.0303987 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0017923 </td>
   <td style="text-align:right;"> 0.0001249 </td>
   <td style="text-align:right;"> -14.3468017 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (65) Media &amp; animals </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0121571 </td>
   <td style="text-align:right;"> 0.0001637 </td>
   <td style="text-align:right;"> 74.2672732 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> -0.0030953 </td>
   <td style="text-align:right;"> 0.0002716 </td>
   <td style="text-align:right;"> -11.3961506 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> (66) Other </td>
   <td style="text-align:right;"> Intercept </td>
   <td style="text-align:right;"> 0.0038287 </td>
   <td style="text-align:right;"> 0.0000119 </td>
   <td style="text-align:right;"> 322.4905663 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
  <tr>
   
   <td style="text-align:right;"> Female </td>
   <td style="text-align:right;"> 0.0002877 </td>
   <td style="text-align:right;"> 0.0000200 </td>
   <td style="text-align:right;"> 14.3849523 </td>
   <td style="text-align:left;"> &lt; 0.001 *** </td>
  </tr>
</tbody>
</table>


## Closeness in frequency for each topic

Using the frequency of a topic among male MPs as a baseline, there are 35 topics where the frequency among AWS MPs is proportionally closer, in absolute terms, than the frequency of the topic among female MPs. The inverse is true for the remaining 31 topics.

Relative to each other, there are 34 topics where the frequency between AWS and non-AWS MPs are closer to each other than either is to the topic frequency in male MPs. In 18 topics, the frequency between AWS and male MPs are the most similar, and in the remaining 14 topics the difference in frequency are smallest between non-AWS and male MPs. See \@ref(tab:absolute-differences) for details.

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:absolute-differences)Absolute Differences</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Topic </th>
   <th style="text-align:left;"> Women Relative to Male MPs </th>
   <th style="text-align:left;"> Most Similar </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> (1) Employment &amp; unions </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (2) Legal system </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (3) Roads </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (4) Housing </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (5) Police, firefighters &amp; prison </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (6) Northern Ireland </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (7) Committee </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (8) Schools </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (9) Energy &amp; climate change </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (10) Defence </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (11) Parliament </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (12) International politics </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (13) Ministers </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (14) Policy impact </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (15) Gender </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (16) Regional development </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (17) Communications </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (18) Immigration </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (19) Health system </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (20) International development </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (21) Benefits &amp; disability </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (22) Sport &amp; culture </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (23) History </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (24) Higher education &amp; skills </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (25) Concurring point </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (26) Pensions </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (27) Points of order </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (28) Issues </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (29) Constituencies </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (30) Ethnic groups &amp; racism </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (31) Amendments </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (32) Reports </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (33) People </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (34) Wales &amp; Scotland </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (35) Alcohol &amp; tobacco </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (36) Place names </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (37) Budget </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (38) Tax </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (39) Private companies </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (40) Environment &amp; fishing </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (41) Crime </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (42) Bills </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (43) Children </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (44) Utilities &amp; PFI </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (45) Middle East </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (46) Local authorities </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (47) Elections </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (48) Debate </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (49) Transport </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (50) Questions </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (51) Families </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (52) Health research </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (53) Dispatch box </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (54) Parties </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (55) Statements </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (56) European Union </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (57) Locations </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (58) Jobs &amp; manufacturing </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (59) Small business </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (60) Agreement &amp; disagreement </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (61) Voluntary sector </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (62) Comments </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (63) Social care </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (64) Time </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (65) Media &amp; animals </td>
   <td style="text-align:left;"> AWS more like male </td>
   <td style="text-align:left;"> AWS more like male </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (66) Other </td>
   <td style="text-align:left;"> Non-AWS more like male </td>
   <td style="text-align:left;"> Women more similar to each other </td>
  </tr>
</tbody>
</table>


## $\theta$ distribution

Figure \@ref(fig:theta-boxplot) shows the distribution of $\theta$ scores used to assign overall topics to individual speeches in Table \@ref(tab:topic-summary-table), per topic.


<div class="figure">
<img src="methodology_files/figure-html/theta-boxplot-1.png" alt="Theta Values in Topic Assignment"  />
<p class="caption">(\#fig:theta-boxplot)Theta Values in Topic Assignment</p>
</div>


## AWS References to Constituents in Context

A random selection of 2% of all references to "my constituency", "my constituent" and "my constituents", by AWS MPs, in context. 

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:constituent-kwic)A random sample of KWIC's</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Pre </th>
   <th style="text-align:left;"> Keyword </th>
   <th style="text-align:left;"> Post </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> . I was briefed by a vehicle hire company in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> called Reflex and, quite frankly, if such banking </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 150 per cent. two years ago. Another of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> has advised me of an application for an 85 per </td>
  </tr>
  <tr>
   <td style="text-align:left;"> already begun, for example just over the border from </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> in the constituency of my hon. Friend the Member </td>
  </tr>
  <tr>
   <td style="text-align:left;"> in which Cornish children study. Three secondary schools in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> will be located on the same site, and one </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Manchester has been doing a major infrastructure project, and </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> are at the end of their tether about the lack </td>
  </tr>
  <tr>
   <td style="text-align:left;"> patient at the BRI, and Airedale hospital is in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . The hon. Member for South Cambridgeshire Mr. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> , but the reality is there to be seen in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . On Saturday I met a delegation of workers from </td>
  </tr>
  <tr>
   <td style="text-align:left;"> to use their abilities and develop their talents. In </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , 366 young people who have been unemployed for more </td>
  </tr>
  <tr>
   <td style="text-align:left;"> I believe that the most effective electoral registration officer in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> is mum. It is mum who fills in the </td>
  </tr>
  <tr>
   <td style="text-align:left;"> can arise from defective gas appliances, because two of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , young students in their 20s, died from carbon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> £ 3.6 million. Some 9% of people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> are hard-working, entrepreneurial self-employed people, and today is </td>
  </tr>
  <tr>
   <td style="text-align:left;"> my right hon. Friend congratulate Aldercar community school in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and its staff and pupils? The percentage of pupils </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ",  One particular concern for many of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> is bus fares. As I have said, my </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ,  Jobs and employment are the biggest issue in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and the latest figures now show that just under 2,000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> otherwise reach. The Psychiatric Rehabilitation Association is based in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and was set up in 1959-it is no coincidence that </td>
  </tr>
  <tr>
   <td style="text-align:left;"> financial inclusion fund. Where would the Minister suggest that </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> who are struggling with debt and excessive and escalating charges </td>
  </tr>
  <tr>
   <td style="text-align:left;"> and without the full participation of the British people, </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> and the country will never forgive them. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> . There is an additional problem that is relevant to </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . It contains a large outdoor venue called the National </td>
  </tr>
  <tr>
   <td style="text-align:left;"> if they continue to propose new services that, in </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> ' view, favour the administration of the hospital or </td>
  </tr>
  <tr>
   <td style="text-align:left;"> in red tape. That will be a turn-off. </td>
   <td style="text-align:left;"> My constituency </td>
   <td style="text-align:left;"> and the town in which it is situated has a </td>
  </tr>
  <tr>
   <td style="text-align:left;"> With my right hon. Friend's local knowledge of </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , she will know that many of my constituents are </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ", to close a wide range of services at </td>
   <td style="text-align:left;"> my constituency's </td>
   <td style="text-align:left;"> local hospital, St Helier. Most of the controversy </td>
  </tr>
  <tr>
   <td style="text-align:left;"> I am extremely worried for </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> in Ashton-under-Lyne, Droylsden and Failsworth, and for people </td>
  </tr>
  <tr>
   <td style="text-align:left;"> One of the shortlisted sites is at Barnard Castle in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , and that would produce 1,000 jobs. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> making ends meet has been raised with me repeatedly by </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , including Graeme McGrory, who cares for his partner </td>
  </tr>
  <tr>
   <td style="text-align:left;"> One piece of transport infrastructure that </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and that of the hon. Member for Buckingham John </td>
  </tr>
  <tr>
   <td style="text-align:left;"> A director of Sirus Automotive who lives in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> would like to take on apprentices, but he has </td>
  </tr>
  <tr>
   <td style="text-align:left;"> " Three people who know that better than most are </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> Mark, Joanne and Ben King. In 2011, </td>
  </tr>
  <tr>
   <td style="text-align:left;"> There are 3,540 women affected by the changes in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . Does my hon. Friend agree that the 1995 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> have been down in the detail of rail provision in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , but these are important matters for many of those </td>
  </tr>
  <tr>
   <td style="text-align:left;"> just a few examples of the work being done in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . I recently had the privilege of accompanying the Gateshead </td>
  </tr>
  <tr>
   <td style="text-align:left;"> , but that does not help the large number of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> who have lost some, if not all, of </td>
  </tr>
  <tr>
   <td style="text-align:left;"> was the only mainstream candidate in the general election in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> who did not have their picture taken while pointing to </td>
  </tr>
  <tr>
   <td style="text-align:left;"> was not even in the mortgage application, NatWest told </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> that it was in the process of adding it. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> is a measure of the Government's achievement that people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and elsewhere in Northamptonshire can look forward to a secure </td>
  </tr>
  <tr>
   <td style="text-align:left;"> clothing company announced the closure of two more factories in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and the neighbouring Erewash constituency. A huge number of </td>
  </tr>
  <tr>
   <td style="text-align:left;"> my primary care trust in north-east Derbyshire and dentists in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> to find a local solution. These reforms coincide with </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cross, just a few miles up the road from </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . That pipe manufacturing works has been taken over by </td>
  </tr>
  <tr>
   <td style="text-align:left;"> go ahead. There is huge concern about this in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and across the north. Was the Prime Minister told </td>
  </tr>
  <tr>
   <td style="text-align:left;"> backgrounds, including poor backgrounds, and is representative of </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . That is the sort of school that Labour Members </td>
  </tr>
  <tr>
   <td style="text-align:left;"> are subject to a TPIM. This information would let </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> know whether potential terrorism suspects had returned to London. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> . Gentleman for his generosity. Is he aware that </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> is probably the one with the highest number of gas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> because I have had direct experience of the issue in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . A woman came over here as the wife of </td>
  </tr>
  <tr>
   <td style="text-align:left;"> . Let us take the feed-in tariff fiasco. In </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> alone, we are losing many jobs, because a </td>
  </tr>
  <tr>
   <td style="text-align:left;"> What practical advice can the Secretary of State give to </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , as some 3,000 householders in my constituency face a </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sport, that this is good enough for kids in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> ? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> a fair deal on jobs, getting young people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and others involved in working our way out of the </td>
  </tr>
  <tr>
   <td style="text-align:left;"> argument is best explained by reference to the case of </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> , Neil Kenny, who raised his concerns about the </td>
  </tr>
  <tr>
   <td style="text-align:left;"> to LEAs give rise to some questions, including in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> from Unison, which is concerned that LEAs might use </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Such travel will be available to all 17,600 pensioners in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . ,  In February I visited </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ",  What point is there in forcing </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> who is a single dad who has his two children </td>
  </tr>
  <tr>
   <td style="text-align:left;"> replies, perhaps he can respond to the questions that </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> has raised. What is she to do? She </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ask my hon. Friend to offer an undertaking to </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> in Mitcham and Morden that an option appraisal of intermediate </td>
  </tr>
  <tr>
   <td style="text-align:left;"> he would be interested to hear the Minister's response to </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> Maureen Davenport. The Minister said that the maximum state </td>
  </tr>
  <tr>
   <td style="text-align:left;"> in child benefit, which will help 13,800 families in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . My real reason for tabling the question is to </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Finchley and Golders Green Mike Freer), many of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> killed by lorries have died at junctions, including some </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hall the plight of former United Engineering Forgings workers in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> who will not receive the returns from their final salary </td>
  </tr>
  <tr>
   <td style="text-align:left;"> London has had Oyster cards for nine years, but </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> are still waiting. Although Transport for Greater Manchester is </td>
  </tr>
  <tr>
   <td style="text-align:left;"> again have a university. However, Nene college in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> hopes to change all that, and I support strongly </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enforcement Campaign-in Cardiff, and particularly to the work of </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> , Professor John Shepherd, who works in the dental </td>
  </tr>
  <tr>
   <td style="text-align:left;"> and assets than non-disabled people. In London, where </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and the constituency of my hon. Friend the Member </td>
  </tr>
  <tr>
   <td style="text-align:left;"> in particular from the circumstances of students in Northampton. </td>
   <td style="text-align:left;"> My constituency </td>
   <td style="text-align:left;"> contains both a higher education and a further education college </td>
  </tr>
  <tr>
   <td style="text-align:left;"> the marine Bill on the grounds of its irrelevance to </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , because, like the hon. Lady, I </td>
  </tr>
  <tr>
   <td style="text-align:left;"> deepest concern for the families involved, especially given that </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> neighbours that of my hon. Friend the Member for </td>
  </tr>
  <tr>
   <td style="text-align:left;"> services can expand on the slow line so that all </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> benefit from the west coast main line upgrade? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rehabilitation. ,  The people of </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> have been horrified by those cases, and it is </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Labour Government we have achieved a tremendous amount. In </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> the number of people claiming jobseeker's allowance has almost halved </td>
  </tr>
  <tr>
   <td style="text-align:left;"> they complain? Where will the local accountability go? </td>
   <td style="text-align:left;"> My constituents </td>
   <td style="text-align:left;"> very much value the highly accessible local service that they </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ",  Since helping the Jarrow marchers, </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> has continued to welcome people from throughout the UK, </td>
  </tr>
  <tr>
   <td style="text-align:left;"> and not-for-profit groups, of which there are many in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , doing immensely valuable work. They all too often </td>
  </tr>
  <tr>
   <td style="text-align:left;"> as soon as possible. Indeed, for some of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , reform is already coming too late. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> bus travel in Wales. I have met pensioners in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> who say that it has transformed their lives. As </td>
  </tr>
  <tr>
   <td style="text-align:left;"> and Sir Malcolm Thornton. All have represented part of </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and all left this House on 20 April or 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Ports is the operator at the port of Immingham in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . The companies there firmly believe that they have paid </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Conservative-controlled Bradford city council excluded the wonderful Ilkley lido in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> from the free swimming initiative for young people and pensioners </td>
  </tr>
  <tr>
   <td style="text-align:left;"> for my hon. Friend's reply, and many of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> who have come across the benefit integrity project will be </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tero was not properly treated and offer the apology that </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> deserves. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> about their corporate social responsibilities. For the sake of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> in Mitcham, Morden and Colliers Wood who want something </td>
  </tr>
  <tr>
   <td style="text-align:left;"> change in the law. Regrettably, not only in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> but in many northern towns and cities, I see </td>
  </tr>
  <tr>
   <td style="text-align:left;"> on an issue that has been of great concern to </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> . While I appreciate the cross-party consensus that exists on </td>
  </tr>
  <tr>
   <td style="text-align:left;"> In </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> of West Lancashire, the national lottery has supported 266 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> to meet the skills gap in engineering and construction in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . ,  When I talk to </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sat with the parents of the two children who were </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , as has Ken Livingstone, who made a private </td>
  </tr>
  <tr>
   <td style="text-align:left;"> who have been strongly encouraged to save The consultation in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> on the pensioners tax credit was extremely successful. The </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Government for investing in the city of Bradford, helping </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> to realise their potential. But in reality little has </td>
  </tr>
  <tr>
   <td style="text-align:left;"> visited Dot To Dot, a community arts project in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . It has a good record of involving the community </td>
  </tr>
  <tr>
   <td style="text-align:left;"> one regret the fact that Westminster, which covers half </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , has so far concentrated CCTV bids-I am sure with </td>
  </tr>
  <tr>
   <td style="text-align:left;"> also significant gaps in the Bill. One example from </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> concerns a community hydro project in Saddleworth that might not </td>
  </tr>
  <tr>
   <td style="text-align:left;"> hon. Friend for that reply, but most of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> probably do not know what a low carbon transition plan </td>
  </tr>
  <tr>
   <td style="text-align:left;"> has provided opportunities where there were none before. In </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , there have been far more opportunities in the past </td>
  </tr>
  <tr>
   <td style="text-align:left;"> to find examples of such practices. Another case in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , with which I am dealing, involves elderly victims </td>
  </tr>
  <tr>
   <td style="text-align:left;"> . ,  The credit union in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> is fragile, because it serves an area in which </td>
  </tr>
  <tr>
   <td style="text-align:left;"> certainly applies to me because the acute trust that covers </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , who desperately need care, has the mother and </td>
  </tr>
  <tr>
   <td style="text-align:left;"> reveal a trend, and I see it happening in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . It is a demonstrable fact that the polarisation between </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> My constituent </td>
   <td style="text-align:left;"> , John Warren, has specifically asked me to raise </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ,  Bridges Project in Musselburgh in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> does a brilliant job in supporting young people. A </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Spowart, a small firm of legal aid solicitors in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . Solicitors at the firm are paid generally between £ </td>
  </tr>
  <tr>
   <td style="text-align:left;"> , both as a national concern and as it affects </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . I am grateful to my hon. Friend for </td>
  </tr>
  <tr>
   <td style="text-align:left;"> , nor, sadly, are far too many of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> . </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> My constituents </td>
   <td style="text-align:left;"> in Hull are baffled by the Government's approach. At </td>
  </tr>
  <tr>
   <td style="text-align:left;"> issue and go after these criminals who are preying on </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> ? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> even begin for another 12 months. Young people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> should not have to spend another year on the dole </td>
  </tr>
  <tr>
   <td style="text-align:left;"> with the nutrition they need outside term time. In </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , several schools run summer programmes funded through the pupil </td>
  </tr>
  <tr>
   <td style="text-align:left;"> takes umbrage at being forced to do repairs-as some of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , sadly, know to their cost. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ",  I recently visited a care home in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> that is provided by a small charity and is rated </td>
  </tr>
  <tr>
   <td style="text-align:left;"> House and members of the armed forces, such as </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> , 19-year-old Private James Kenny of C company, 3rd </td>
  </tr>
  <tr>
   <td style="text-align:left;"> as out to Kent. There are seven stations in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> : Hither Green, Blackheath, Lee, Grove Park </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Can my right hon. Friend give any assurance to </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> , Mr. Peter Dyson, who has written to </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Commons Library to conduct an analysis of the impact in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . I discovered that 4,300 women and 3,800 men would </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 100 days of the new Parliament? Many businesses in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> are struggling significantly and would undoubtedly welcome a period of </td>
  </tr>
  <tr>
   <td style="text-align:left;"> in 1992, as the Member for Woolwich, before </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> was formed for the 1997 election. John Austin is </td>
  </tr>
  <tr>
   <td style="text-align:left;"> were building up and seemed to take action only once </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> had suffered a very high level of nuisance and there </td>
  </tr>
  <tr>
   <td style="text-align:left;"> that further education institutions, such as Blackburn College in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , will not receive a real-terms funding cut as a </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ",  On a more serious note, </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> is home to manufacturers varying from Corus to Cadbury, </td>
  </tr>
  <tr>
   <td style="text-align:left;"> costs and cuts to working tax credits, families in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> will be worse off. I will not vote in </td>
  </tr>
  <tr>
   <td style="text-align:left;"> be warm. It paid for basics like that in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . I will not revisit the pain of tuition fees </td>
  </tr>
  <tr>
   <td style="text-align:left;"> is a national issue. The 900 steel workers in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> whose jobs are on the line expect him to guarantee </td>
  </tr>
  <tr>
   <td style="text-align:left;"> to begin by speaking about the NHS as experienced by </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> . Getting an appointment to see a GP can be </td>
  </tr>
  <tr>
   <td style="text-align:left;"> I was struck by what one of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> said last weekend, which was that the attacks that </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ",  On 18 February, Llandudno in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> hosted the first North Wales criminal justice board conference. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> my hon. Friend foresee for the young people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> if they are to suffer possible cuts alongside that idiosyncratic </td>
  </tr>
  <tr>
   <td style="text-align:left;"> busways and widen the M1. Is he aware that </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> will have the new Translink guided busway by 2008 due </td>
  </tr>
  <tr>
   <td style="text-align:left;"> " Last week, I hosted a jobs fair in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , as have many hon. Members on both sides </td>
  </tr>
  <tr>
   <td style="text-align:left;"> in the south-east will be dealt with in Parliament? </td>
   <td style="text-align:left;"> My constituents </td>
   <td style="text-align:left;"> want to know where we are going and what the </td>
  </tr>
  <tr>
   <td style="text-align:left;"> him to visit the brand-new children's centre in Elland in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , which is due to open in January, and </td>
  </tr>
  <tr>
   <td style="text-align:left;"> realities for people affected by this situation. One of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> is stuck out in Saudi Arabia. His work has </td>
  </tr>
  <tr>
   <td style="text-align:left;"> the past few days. When the problems started in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> on Monday night, we saw copycat criminality, mindless </td>
  </tr>
  <tr>
   <td style="text-align:left;"> those branches, in Catford and Blackheath, are in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and two others, in Lewisham and Greenwich, are </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> My constituent </td>
   <td style="text-align:left;"> , Richard Belmar, has now spent nearly three years </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Postwatch because I am unhappy about the consultation process in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . I fully accept many of my hon. Friend's </td>
  </tr>
  <tr>
   <td style="text-align:left;"> area of Keighley last Friday and talking to many of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> and taking on board many of their anxieties. On </td>
  </tr>
  <tr>
   <td style="text-align:left;"> of the major issues raised with me by carers in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . We must take such issues on board.\ </td>
  </tr>
  <tr>
   <td style="text-align:left;"> that the voucher company Farepak, which is based in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , collapsed this week, robbing thousands of people on </td>
  </tr>
  <tr>
   <td style="text-align:left;"> scientific reports recommend restricted phone use by younger children. </td>
   <td style="text-align:left;"> My constituents </td>
   <td style="text-align:left;"> do not believe that such recommendations tally with the telecommunications </td>
  </tr>
  <tr>
   <td style="text-align:left;"> . Mullin). This is a big issue in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , where inappropriate development on garden sites is taking place </td>
  </tr>
  <tr>
   <td style="text-align:left;"> scrutiny process, but it is impossible for me, </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> or councillors of any party not involved in that enterprise </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ",  At the time, I was consulting </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> about their attitudes to crime and antisocial behaviour, and </td>
  </tr>
  <tr>
   <td style="text-align:left;"> you prove it?  , </td>
   <td style="text-align:left;"> My constituency </td>
   <td style="text-align:left;"> is served by two hospitals: Dewsbury and District hospital </td>
  </tr>
  <tr>
   <td style="text-align:left;"> % reduction. What reassurances can the Minister give to </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> and firefighters that those latest cuts will not jeopardise or </td>
  </tr>
  <tr>
   <td style="text-align:left;"> . ,  Horwich visiting service in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> has lost funding and can no longer employ its part-time </td>
  </tr>
  <tr>
   <td style="text-align:left;"> I have spoken to many businesses in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . Will the hon. Gentleman concede that the Government's </td>
  </tr>
  <tr>
   <td style="text-align:left;"> prevent businesses from going into administration, as many in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> are likely to do. Finally, the local authority </td>
  </tr>
  <tr>
   <td style="text-align:left;"> I do not know whether my experience in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> has been exactly the same as that of my right </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ? ,  Many SMEs operate in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , and I want to ensure that the skills base </td>
  </tr>
  <tr>
   <td style="text-align:left;"> that population live in Salford, the local authority for </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . ,  In last year's debate </td>
  </tr>
  <tr>
   <td style="text-align:left;"> It is an issue that has been simmering away in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and recently the rumours have turned to reality as the </td>
  </tr>
  <tr>
   <td style="text-align:left;"> of the parenting lessons that go on in schools in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> to great effect. The hon. Gentleman ignores those </td>
  </tr>
  <tr>
   <td style="text-align:left;"> a distraught couple who run a hedgehog rescue centre in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . They are currently nursing back to health a hedgehog </td>
  </tr>
  <tr>
   <td style="text-align:left;"> people to think that that was the total sum of </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . It is an extremely nice place to spend Christmas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> transparency about the impact. , </td>
   <td style="text-align:left;"> My constituents </td>
   <td style="text-align:left;"> are also anxious about the Government's proposals to allow fracking </td>
  </tr>
  <tr>
   <td style="text-align:left;"> some of its provisions will have on vulnerable people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . ,  I shall first raise </td>
  </tr>
  <tr>
   <td style="text-align:left;"> key elements of creative business growth. Creative businesses in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and in a large area to the west of London </td>
  </tr>
  <tr>
   <td style="text-align:left;"> In Pembrokeshire we have two oil refineries, one in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . They were both affected by the blockades in September </td>
  </tr>
  <tr>
   <td style="text-align:left;"> thank the Minister for his reply. Head teachers in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> are concerned that Government have still not come forward with </td>
  </tr>
  <tr>
   <td style="text-align:left;"> the work of local authorities in my area. In </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , there are no high profile arts venues that hit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> many of the early asbestosis claims from Hebden Bridge in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> might not have succeeded under the proposed 75 per cent </td>
  </tr>
  <tr>
   <td style="text-align:left;"> job first.\  , </td>
   <td style="text-align:left;"> My constituency </td>
   <td style="text-align:left;"> is pronounced\  Erreywash\ , not\ </td>
  </tr>
  <tr>
   <td style="text-align:left;"> that is not regulated properly, with the result that </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , who have small sums of money available to invest </td>
  </tr>
  <tr>
   <td style="text-align:left;"> a picture of the winning design, but people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> have seen many pictures before. I want work to </td>
  </tr>
  <tr>
   <td style="text-align:left;"> hour. I have written to all the headteachers in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> over the last few weeks, and they tell me </td>
  </tr>
  <tr>
   <td style="text-align:left;"> this debate falls on an anniversary well worth remembering for </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> . It is 20 years to the month that post-war </td>
  </tr>
  <tr>
   <td style="text-align:left;"> people of the east end, including the people of </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , talk to me about how excited they still are </td>
  </tr>
  <tr>
   <td style="text-align:left;"> I recently visited Bishop Barrington school in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , which has got a new science lab and sports </td>
  </tr>
  <tr>
   <td style="text-align:left;"> the extent of the disruption and the problems caused for </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> ? I would be happy to do that.\ </td>
  </tr>
  <tr>
   <td style="text-align:left;"> increase in the number of new homes being built in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> over the past 10 years or so. For the </td>
  </tr>
  <tr>
   <td style="text-align:left;"> junior doctors who are the problem, but him? </td>
   <td style="text-align:left;"> My constituents-hundreds </td>
   <td style="text-align:left;"> of whom have written to me-overwhelmingly feel that he has </td>
  </tr>
  <tr>
   <td style="text-align:left;"> , ,  I do not think </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> knew whether to laugh or cry. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> about to be built in Walkden in the centre of </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . The new local improvement finance trust-LIFT-centre will include GP </td>
  </tr>
  <tr>
   <td style="text-align:left;"> is higher, and the dole queue is lengthening. </td>
   <td style="text-align:left;"> My constituents </td>
   <td style="text-align:left;"> are only too well aware of the exploitative practices of </td>
  </tr>
  <tr>
   <td style="text-align:left;"> " I am fortunate in having a research centre in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> at the university of Durham, which concentrates on enabling </td>
  </tr>
  <tr>
   <td style="text-align:left;"> is talking about the wrong hospital, which many of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> will find most amusing. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> of the Land Registry would be bad not just for </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> but for the public as a whole. The revenue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> The food banks in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , which currently number at least six, tell me </td>
  </tr>
  <tr>
   <td style="text-align:left;"> of those issues. ,  In </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , the credit union benefits from capital and revenue from </td>
  </tr>
  <tr>
   <td style="text-align:left;"> children. I am indebted to a law company in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> called Just for Kids Law, which has raised with </td>
  </tr>
  <tr>
   <td style="text-align:left;"> hope they are not giving false hope to many of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> . Will they just admit that they have made a </td>
  </tr>
  <tr>
   <td style="text-align:left;"> I have a range of energy-intensive industries in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , including steel, glass, paper and the entire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> the save Lewisham hospital campaign. But for now, </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> still face the prospect of seriously downgraded services at their </td>
  </tr>
  <tr>
   <td style="text-align:left;"> from and bugbear for my constituents. On behalf of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> and their families, I very much look forward to </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ",  helped motorists and the hard-pressed hauliers in </td>
   <td style="text-align:left;"> my constituency-or </td>
   <td style="text-align:left;"> they could have looked at jobs for young people. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Staff at Trinity, Bluecoat and Fernwood schools in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> are desperate for extra investment in their buildings. Will </td>
  </tr>
  <tr>
   <td style="text-align:left;"> The point about geography is critical in Cumbria, where </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> is. Under the proposals, we will end up </td>
  </tr>
  <tr>
   <td style="text-align:left;"> will affect disabled youngsters. The What? centre in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , which gives counselling to all youngsters, still does </td>
  </tr>
  <tr>
   <td style="text-align:left;"> closure of the offices is having a direct impact on </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . Walsall faces the closure of its HMRC office, </td>
  </tr>
  <tr>
   <td style="text-align:left;"> . ,  Frustration is evident among </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> : for many years, they have felt marginalised and </td>
  </tr>
  <tr>
   <td style="text-align:left;"> , larger numbers of people are choosing to live in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> but work in London. If we are to take </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ethnic minority children, of whom there are many in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . ,  We have dealt a </td>
  </tr>
  <tr>
   <td style="text-align:left;"> single parents in the country-I will return to that point-and </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> think that the measure is unfair. How people in </td>
  </tr>
  <tr>
   <td style="text-align:left;"> should not come back from our holidays to find that </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , and those of my neighbours, have lost their </td>
  </tr>
  <tr>
   <td style="text-align:left;"> their area; I fully intend to do so in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . ,  We also need better </td>
  </tr>
  <tr>
   <td style="text-align:left;"> too much movement. I want Airedale general hospital in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> not just to survive, but to prosper. It </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ",  During the summer and autumn months, </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> and those of many other hon. Members were affected </td>
  </tr>
  <tr>
   <td style="text-align:left;"> put a human face on many of the difficulties that </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> experience. ,  In Newham, </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Parent Action Network, which has its national headquarters in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . It has just received nearly £ 400,000 in lottery </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sector. On Friday, an independent community pharmacist in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> told me that he estimated that the Government cuts would </td>
  </tr>
  <tr>
   <td style="text-align:left;"> it becomes an empty gesture. A community group in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> is setting up a community development trust, and it </td>
  </tr>
  <tr>
   <td style="text-align:left;"> since June and doubled since 2006. Young people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> have been particularly badly hit, with a 288% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> police get back to strength to defend the people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> of Mitcham and Morden? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> to address have been influenced by what has happened in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> in the past 10 days as a series of incidents </td>
  </tr>
  <tr>
   <td style="text-align:left;"> , including those of Allied Steel and Wire's pensioners in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> ? They took the case to court through the unions </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Indeed, it is a stealth cut. In </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , the Tories will have to make stealth cuts such </td>
  </tr>
  <tr>
   <td style="text-align:left;"> communities across the UK. I understand the concerns of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> . I understand that when a family from a different </td>
  </tr>
  <tr>
   <td style="text-align:left;"> a vested interest in ensuring the safety and security of </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> , which in the past has been a military target </td>
  </tr>
  <tr>
   <td style="text-align:left;"> infrastructure project is a massive economic opportunity for Wales and </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> in particular. Will the Minister assure the House that </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nottingham that stands to lose most is the Meadows in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . Before the last election, the Meadows, one </td>
  </tr>
  <tr>
   <td style="text-align:left;"> am here this afternoon specifically to represent the concerns of </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> who are trade union members in Parliament, as they </td>
  </tr>
  <tr>
   <td style="text-align:left;"> . Nothing could be further from the truth, as </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> exemplifies. As I have already said, I represent </td>
  </tr>
  <tr>
   <td style="text-align:left;"> making are the very ones that have been made by </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> , by the constituents of my hon. Friends and-I </td>
  </tr>
  <tr>
   <td style="text-align:left;"> , but wanted to take the opportunity to read out </td>
   <td style="text-align:left;"> my constituent's </td>
   <td style="text-align:left;"> comments so that Ministers understand the worry and concern. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> firm of Hickman and Rose, which is based in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> ? She was due to speak at a conference organised </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Majesty's Opposition. That public money could be used for </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> Grace Ryder, aged 9, who was recently diagnosed </td>
  </tr>
  <tr>
   <td style="text-align:left;"> changes that will affect 650 families and 1,500 children in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . ,  These are ideologically driven </td>
  </tr>
  <tr>
   <td style="text-align:left;"> deal more about the birdlife in both estuaries that surround </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> . ,  The Bill establishes a </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> My constituent </td>
   <td style="text-align:left;"> , the wonderful campaigner Marie Lyons, has doggedly pursued </td>
  </tr>
  <tr>
   <td style="text-align:left;"> \  vote for their Muslim brother\ . </td>
   <td style="text-align:left;"> My constituents </td>
   <td style="text-align:left;"> were told that that was their religious duty. When </td>
  </tr>
  <tr>
   <td style="text-align:left;"> . It will bring huge benefits to many families in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> who are on low or not very generous incomes. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> anywhere. ,  The diversity of </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> is one of the reasons why it is the best </td>
  </tr>
  <tr>
   <td style="text-align:left;"> c  The NHS in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> has moved beyond special measures into the success regime. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> invited my right hon. and learned Friend to meet </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> to hear what they think about our local NHS. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fleeing Ebola-affected countries are not left destitute and homeless? </td>
   <td style="text-align:left;"> My constituents </td>
   <td style="text-align:left;"> , Mr and Mrs Mahmood, have been working in </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pension credit, but I wondered whether Ministers could give </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> and me advice on whether the notional sum tied up </td>
  </tr>
  <tr>
   <td style="text-align:left;"> first home. There are so many young people in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> who see homes priced out of their reach and for </td>
  </tr>
  <tr>
   <td style="text-align:left;"> There are also problems for low-income families, such as </td>
   <td style="text-align:left;"> my constituent </td>
   <td style="text-align:left;"> on Colleymoor Leys lane who says: </td>
  </tr>
  <tr>
   <td style="text-align:left;"> term. I know from the experience of businesses in </td>
   <td style="text-align:left;"> my constituency </td>
   <td style="text-align:left;"> and in the surrounding west midlands area that New Street </td>
  </tr>
  <tr>
   <td style="text-align:left;"> that he needs those, but he failed to tell </td>
   <td style="text-align:left;"> my constituents </td>
   <td style="text-align:left;"> watching yesterday that a 1p cut in duty will not </td>
  </tr>
  <tr>
   <td style="text-align:left;"> average, which show that over a fifth-22% in </td>
   <td style="text-align:left;"> my constituency-of </td>
   <td style="text-align:left;"> people who resort to food banks for an emergency food </td>
  </tr>
</tbody>
</table>

# References

[^1]: e.g. a reference to "the member for Bethnal Green and Bow" in keeping with Parliamentary convention of identifying MPs by their seat rather than their name would be followed by "(Rushnara Ali)".

[^2]: Available online at: https://github.com/mikajoh/tidystm
