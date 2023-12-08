# By the range of time


## Class 6 Experiment Design

### answers

Your questions touch on important concepts in research methodology:

1. **Definition of "Controlled Variable"**:
   A controlled variable is an element that is constant and unchanged throughout the course of a scientific experiment. It's not the primary concern of the experiment, but it's controlled because it could influence the outcome of the experiment. By keeping this variable constant, researchers ensure that any observed effects in the experiment can be attributed to the manipulation of the independent variables, rather than to the potential influence of the controlled variable.

2. **Selection of Mothers with High Expectancy in a Study**:
   - **Possible Reason for Selection**: Researchers might select mothers with high expectancy in a study to focus on a specific aspect of maternal behavior or child development that is more pronounced or observable in this group. For instance, they might be investigating the impact of high parental expectations on child outcomes.
	   - ====the high expectancy is the controlled variable====
   - **Confounding Effect**: This selection could introduce a confounding effect if the high expectancy is correlated with other variables that also affect the outcome of interest. For example, high expectancy might be associated with higher socioeconomic status or more educational resources, which could independently influence the study's outcomes.
   - **Potential Conclusions**: In such a study, conclusions would be specific to mothers with high expectancy and might not be generalizable to the broader population. The study might reveal insights into how high expectancy influences child development or maternal behavior but must be interpreted with the understanding that these findings are specific to this particular group.
  
3. **Role of Randomization in Mitigating Confounds**:
   Randomization is a key method in experimental design to control for confounding variables. By randomly assigning participants to treatment or control groups, researchers ensure that each group is likely to be similar in all respects, except for the treatment. This similarity includes known and unknown confounding variables, thereby minimizing their potential impact on the study's results.

4. **Examples of Sampling Bias**:
   Sampling bias occurs when the sample is not representative of the population from which it was drawn. Examples include:
   - **Self-Selection Bias**: When individuals volunteer for a study, they may not be representative of the general population.
   - **Convenience Sampling**: Choosing participants because they are easy to access, such as using only students from a single university.
   - **Non-Response Bias**: Occurs when individuals who choose not to respond differ significantly from those who do.
   - **Survivorship Bias**: Focusing on individuals or entities that 'survived' some process while overlooking those that did not, leading to flawed conclusions.

Understanding these concepts is crucial for designing robust research studies and for critically evaluating research findings.

## Class 7 Human Experiments

### answers

Your questions pertain to nuanced aspects of research design and methodology:

1. **Treating a X-Point Scale as Interval Data**:
   A X-point scale (e.g., a Likert scale) can be treated as interval data under certain conditions. This is feasible if the scale points represent equidistant intervals on the underlying construct being measured. For instance, the difference between scale points should represent a consistent difference in the magnitude of the attribute or opinion being measured. Researchers often assume a Likert scale is interval for the purposes of statistical analysis, though this is a point of debate in the field.

2. **Necessity of Blinding Coders/Raters Regardless of Training**:
   Even if coders or raters are well-trained, blinding is often necessary to minimize bias. Blinding ensures that the raters' judgments are not influenced by extraneous factors or their expectations about the study. This is particularly important in experimental designs where the researcher's hypothesis or participants' conditions (e.g., treatment vs. control) might unconsciously influence their ratings.

3. **Seeking Ethics Approval Relative to the Pilot Study**:
   Ethics approval is typically sought before conducting the pilot study. The pilot study itself is part of the research process and may involve human subjects, thus requiring ethical clearance. The final protocol for the main study, informed by the findings of the pilot, may then be submitted for a subsequent round of review if significant changes are made based on the pilot study results.

4. **Advantages and Disadvantages of Removing the Neutral Choice**:
   - *Advantage*: Removing the neutral option in a scale (e.g., using a 4-point instead of a 5-point scale) can force respondents to make a more definitive choice, potentially yielding more decisive data.
   - *Disadvantage*: It may also lead to frustration or inaccuracy if respondents genuinely hold neutral views and are forced to choose a side, potentially skewing the results.

5. **Avoiding Central Tendency Bias**:
   Central tendency bias, where respondents tend to avoid extreme responses and select middle or average options, can be mitigated through various strategies:
   - **Scale Design**: Employing a scale without a midpoint can discourage central tendency bias.
   - **Question Framing**: Ensuring questions are clear and specific can encourage more thoughtful responses.
   - **Training and Instruction**: Educating respondents about the importance of using the full range of the scale and providing examples of when it's appropriate to use extreme points.
   - **Pilot Testing**: Conducting a pilot test to identify and correct for any tendency towards central response bias in the survey design.

Each of these aspects plays a vital role in the integrity and accuracy of research findings. It is crucial to consider these elements carefully during the research design phase to ensure robust and valid results.

## Class 8 Estimated Sampling Distributions

1. Hypothesis Testing
2. Estimated Sampling distributions
	1. CLT
	2. z, t-tests
	3. Fisher's R transform

[[Central limit Theory-Wikipedia]]
[[Sampling Distribution- WIKI]]
[[Z-scores -> Wiki]]


Your queries delve into statistical testing, a fundamental aspect of empirical research. Let's address each question in turn:

### question

1. **Sampling Distribution in the 2-Sample t-Test**: 
   In a 2-sample t-test, the sampling distribution under consideration is the distribution of the difference between the two sample means. This test is predicated on the assumption that the samples are drawn from normally distributed populations with unknown but equal variances. The t-distribution, which forms the basis of this test, takes into account the degrees of freedom that are a function of the sample sizes of the two groups.


2. **Calculating Critical Values in Fisher’s r-to-z Transformation with Neyman-Pearson Approach**: 
   Fisher's r-to-z transformation is employed to convert Pearson's correlation coefficient (r) into a normally distributed variable. This transformation facilitates the use of parametric tests on correlation coefficients. The Neyman-Pearson framework for hypothesis testing involves setting a specific alpha level (significance level) to determine critical values. After transforming the correlation coefficients using Fisher’s method, the critical values are calculated based on the standard normal distribution (z-distribution), considering the predetermined alpha level.

3. **Applicability of z- or t-Tests Beyond Mean Comparisons**:
   The z-test and t-test are primarily designed for comparing means. However, they can be adapted for other purposes. For example, a t-test can be used to test the significance of Pearson's correlation coefficient. The z-test is often used in proportion testing, such as comparing the proportion of a particular attribute in two different populations. It is important to adapt these tests correctly for different contexts and ensure that the underlying assumptions (such as normality, independence, and homogeneity of variance) are met.

4. **Test for Pre- and Post-Experiment Questionnaire Scores**:
   When comparing scores from the same participants before and after an experiment, a paired samples t-test (also known as a repeated measures t-test or dependent t-test) is appropriate. This test is designed to compare two means from the same group at different times or under different conditions. It accounts for the fact that the observations are not independent but are linked because they come from the same participants.

Each of these tests and transformations are powerful tools in statistical analysis, provided their assumptions and conditions of use are properly adhered to. Selecting the appropriate test is crucial to the validity of the analysis, and understanding the theory behind these methods is essential for accurate interpretation of their results.