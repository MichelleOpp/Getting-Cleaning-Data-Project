#CODE BOOK

The output file "summary\_results.txt" contains the following variables. The first two variables identify the 
subject_id and the activity, and there is one row for each combination. The remaining variables contain the mean
values of 66 features, grouped by subject\_id and activity. The names of variables 3-68 are of the form "mean\_of\_X", where X is the name of one of the features with the parentheses removed and dashes replaced with underscores. 
Refer to "UCI HAR Dataset/features\_info.txt" for more information about the 
underlying features. 

1. **subject_id:** integer from 1 to 30
      
2. **activity:**
      factor with 6 levels (LAYING, SITTING, STANDING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS)
      
3. **mean_of_tBodyAcc_mean_X:**
      mean of the feature tBodyAcc-mean()-X across all observations in the group 
      
4. **mean_of_tBodyAcc_mean_Y:**
      mean of the feature tBodyAcc-mean()-Y across all observations in the group
      
5. **mean_of_tBodyAcc_mean_Z:**
      mean of the feature tBodyAcc-mean()-Z across all observations in the group 
      
6. **mean_of_tBodyAcc_std_X:**
      mean of the feature tBodyAcc-std()-X across all observations in the group 

7. **mean_of_tBodyAcc_std_Y:**
      mean of the feature tBodyAcc-std()-Y across all observations in the group 

8. **mean_of_tBodyAcc_std_Z:**
      mean of the feature tBodyAcc-std()-Z across all observations in the group 

9. **mean_of_tGravityAcc_mean_X:**
      mean of the feature tGravityAcc-mean()-X across all observations in the group 

10. **mean_of_tGravityAcc_mean_Y:**
      mean of the feature tGravityAcc-mean()-Y across all observations in the group 

11. **mean_of_tGravityAcc_mean_Z:**
      mean of the feature tGravityAcc-mean()-Z across all observations in the group 

12. **mean_of_tGravityAcc_std_X:**
      mean of the feature tGravityAcc-std()-X across all observations in the group 

13. **mean_of_tGravityAcc_std_Y:**
      mean of the feature tGravityAcc-std()-Y across all observations in the group 

14. **mean_of_tGravityAcc_std_Z:**
      mean of the feature tGravityAcc-std()-Y across all observations in the group 

15. **mean_of_tBodyAccJerk_mean_X:**
      mean of the feature tBodyAccJerk-mean()-X across all observations in the group 

16. **mean_of_tBodyAccJerk_mean_Y:**
      mean of the feature tBodyAccJerk-mean()-Y across all observations in the group 

17. **mean_of_tBodyAccJerk_mean_Z:**
      mean of the feature tBodyAccJerk-mean()-Z across all observations in the group 

18. **mean_of_tBodyAccJerk_std_X:**
      mean of the feature tBodyAccJerk-std()-X across all observations in the group 

19. **mean_of_tBodyAccJerk_std_Y:**
      mean of the feature tBodyAccJerk-std()-Y across all observations in the group 

20. **mean_of_tBodyAccJerk_std_Z:**
      mean of the feature tBodyAccJerk-std()-Z across all observations in the group 

21. **mean_of_tBodyGyro_mean_X:**
      mean of the feature tBodyGyro-mean()-X across all observations in the group 

22. **mean_of_tBodyGyro_mean_Y:**
      mean of the feature tBodyGyro-mean()-Y across all observations in the group 

23. **mean_of_tBodyGyro_mean_Z:**
      mean of the feature tBodyGyro-mean()-Z across all observations in the group 

24. **mean_of_tBodyGyro_std_X:**
      mean of the feature tBodyGyro-std()-X across all observations in the group 

25. **mean_of_tBodyGyro_std_Y:**
      mean of the feature tBodyGyro-std()-Y across all observations in the group 

26. **mean_of_tBodyGyro_std_Z:**
      mean of the feature tBodyGyro-std()-Z across all observations in the group 

27. **mean_of_tBodyGyroJerk_mean_X:**
      mean of the feature tBodyGyroJerk-mean()-X across all observations in the group 

28. **mean_of_tBodyGyroJerk_mean_Y:**
      mean of the feature tBodyGyroJerk-mean()-Y across all observations in the group 

29. **mean_of_tBodyGyroJerk_mean_Z:**
      mean of the feature tBodyGyroJerk-mean()-Z across all observations in the group 

30. **mean_of_tBodyGyroJerk_std_X:**
      mean of the feature tBodyGyroJerk-std()-X across all observations in the group 

31. **mean_of_tBodyGyroJerk_std_Y:**
      mean of the feature tBodyGyroJerk-std()-Y across all observations in the group 

32. **mean_of_tBodyGyroJerk_std_Z:**
      mean of the feature tBodyGyroJerk-std()-Z across all observations in the group 

33. **mean_of_tBodyAccMag_mean:**
      mean of the feature tBodyAccMag-mean() across all observations in the group 

34. **mean_of_tBodyAccMag_std:**
      mean of the feature tBodyAccMag-std() across all observations in the group 

35. **mean_of_tGravityAccMag_mean:**
      mean of the feature tGravityAccMag-mean() across all observations in the group 

36. **mean_of_tGravityAccMag_std:**
      mean of the feature tGravityAccMag-std() across all observations in the group 

37. **mean_of_tBodyAccJerkMag_mean:**
      mean of the feature tBodyAccJerkMag-mean() across all observations in the group 

38. **mean_of_tBodyAccJerkMag_std:**
      mean of the feature tBodyAccJerkMag-std() across all observations in the group 

39. **mean_of_tBodyGyroMag_mean:**
      mean of the feature tBodyGyroMag-mean() across all observations in the group 

40. **mean_of_tBodyGyroMag_std:**
      mean of the feature tBodyGyroMag-std() across all observations in the group 

41. **mean_of_tBodyGyroJerkMag_mean:**
      mean of the feature tBodyGyroJerkMag-mean() across all observations in the group 

42. **mean_of_tBodyGyroJerkMag_std:**
      mean of the feature tBodyGyroJerkMag-std() across all observations in the group 

43. **mean_of_fBodyAcc_mean_X:**
      mean of the feature fBodyAcc-mean()-X across all observations in the group 

44. **mean_of_fBodyAcc_mean_Y:**
      mean of the feature fBodyAcc-mean()-Y across all observations in the group 

45. **mean_of_fBodyAcc_mean_Z:**
      mean of the feature fBodyAcc-mean()-Z across all observations in the group 

46. **mean_of_fBodyAcc_std_X:**
      mean of the feature fBodyAcc-std()-X across all observations in the group 

47. **mean_of_fBodyAcc_std_Y:**
      mean of the feature fBodyAcc-std()-Y across all observations in the group

48. **mean_of_fBodyAcc_std_Z:**
      mean of the feature fBodyAcc-std()-Z across all observations in the group 

49. **mean_of_fBodyAccJerk_mean_X:**
      mean of the feature fBodyAccJerk-mean()-X across all observations in the group

50. **mean_of_fBodyAccJerk_mean_Y:**
      mean of the feature fBodyAccJerk-mean()-Y across all observations in the group

51. **mean_of_fBodyAccJerk_mean_Z:**
      mean of the feature fBodyAccJerk-mean()-Z across all observations in the group

52. **mean_of_fBodyAccJerk_std_X:**
      mean of the feature fBodyAccJerk-std()-X across all observations in the group

53. **mean_of_fBodyAccJerk_std_Y:**
      mean of the feature fBodyAccJerk-std()-Y across all observations in the group

54. **mean_of_fBodyAccJerk_std_Z:**
      mean of the feature fBodyAccJerk-std()-Z across all observations in the group

55. **mean_of_fBodyGyro_mean_X:**
      mean of the feature fBodyGyro-mean()-X across all observations in the group

56. **mean_of_fBodyGyro_mean_Y:**
      mean of the feature fBodyGyro-mean()-Y across all observations in the group

57. **mean_of_fBodyGyro_mean_Z:**
      mean of the feature fBodyGyro-mean()-Z across all observations in the group

58. **mean_of_fBodyGyro_std_X:**
      mean of the feature fBodyGyro-std()-X across all observations in the group

59. **mean_of_fBodyGyro_std_Y:**
      mean of the feature fBodyGyro-std()-Y across all observations in the group

60. **mean_of_fBodyGyro_std_Z:**
      mean of the feature fBodyGyro-std()-Z across all observations in the group

61. **mean_of_fBodyAccMag_mean:**
      mean of the feature fBodyAccMag-mean() across all observations in the group

62. **mean_of_fBodyAccMag_std:**
      mean of the feature fBodyAccMag-std() across all observations in the group

63. **mean_of_fBodyBodyAccJerkMag_mean:**
      mean of the feature fBodyBodyAccJerkMag-mean() across all observations in the group

64. **mean_of_fBodyBodyAccJerkMag_std:**
      mean of the feature fBodyBodyAccJerkMag-std() across all observations in the group

65. **mean_of_fBodyBodyGyroMag_mean:**
      mean of the feature fBodyBodyGyroMag-mean() across all observations in the group

66. **mean_of_fBodyBodyGyroMag_std:**
      mean of the feature fBodyBodyGyroMag-std() across all observations in the group

67. **mean_of_fBodyBodyGyroJerkMag_mean:**
      mean of the feature fBodyBodyGyroJerkMag-mean() across all observations in the group

68. **mean_of_fBodyBodyGyroJerkMag_std:**
      mean of the feature fBodyBodyGyroJerkMag-std() across all observations in the group
