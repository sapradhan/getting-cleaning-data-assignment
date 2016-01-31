#Codebook

Original Data from 

## Human Activity Recognition Using Smartphones Dataset, Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

## Steps taken
Out of 561 variables, only the ones containing mean and standard deviations were extracted resulting in 88 variables. There were 10299 total observations after assimilating both test and training data set. Averages of each variable were calculated after grouping the observations by subject and activity

## Variables 

* activity: character.

    one out of 6 activities WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
    
* subject: integer 1-30.

    code that identifies subject who performed the activity 

* Numeric averages of other variables: 
    tbodyacc.mean.x tbodyacc.mean.y tbodyacc.mean.z 
    tbodyacc.std.x tbodyacc.std.y tbodyacc.std.z 
    tgravityacc.mean.x tgravityacc.mean.y tgravityacc.mean.z 
    tgravityacc.std.x tgravityacc.std.y tgravityacc.std.z 
    tbodyaccjerk.mean.x tbodyaccjerk.mean.y tbodyaccjerk.mean.z 
    tbodyaccjerk.std.x tbodyaccjerk.std.y tbodyaccjerk.std.z 
    tbodygyro.mean.x tbodygyro.mean.y tbodygyro.mean.z 
    tbodygyro.std.x tbodygyro.std.y tbodygyro.std.z 
    tbodygyrojerk.mean.x tbodygyrojerk.mean.y tbodygyrojerk.mean.z 
    tbodygyrojerk.std.x tbodygyrojerk.std.y tbodygyrojerk.std.z 
    tbodyaccmag.mean tbodyaccmag.std 
    tgravityaccmag.mean tgravityaccmag.std 
    tbodyaccjerkmag.mean tbodyaccjerkmag.std 
    tbodygyromag.mean tbodygyromag.std 
    tbodygyrojerkmag.mean tbodygyrojerkmag.std 
    fbodyacc.mean.x fbodyacc.mean.y fbodyacc.mean.z 
    fbodyacc.std.x fbodyacc.std.y fbodyacc.std.z 
    fbodyacc.meanfreq.x fbodyacc.meanfreq.y fbodyacc.meanfreq.z 
    fbodyaccjerk.mean.x fbodyaccjerk.mean.y fbodyaccjerk.mean.z 
    fbodyaccjerk.std.x fbodyaccjerk.std.y fbodyaccjerk.std.z 
    fbodyaccjerk.meanfreq.x fbodyaccjerk.meanfreq.y fbodyaccjerk.meanfreq.z 
    fbodygyro.mean.x fbodygyro.mean.y fbodygyro.mean.z 
    fbodygyro.std.x fbodygyro.std.y fbodygyro.std.z 
    fbodygyro.meanfreq.x fbodygyro.meanfreq.y fbodygyro.meanfreq.z 
    fbodyaccmag.mean fbodyaccmag.std 
    fbodyaccmag.meanfreq fbodybodyaccjerkmag.mean fbodybodyaccjerkmag.std 
    fbodybodyaccjerkmag.meanfreq fbodybodygyromag.mean fbodybodygyromag.std 
    fbodybodygyromag.meanfreq fbodybodygyrojerkmag.mean fbodybodygyrojerkmag.std
    fbodybodygyrojerkmag.meanfreq 
    angletbodyaccmeangravity angletbodyaccjerkmeangravitymean 
    angletbodygyromeangravitymean angletbodygyrojerkmeangravitymean 
    anglexgravitymean angleygravitymean anglezgravitymean
