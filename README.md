# exoplanet_exploration_machine_learning

# Model Results
### SVM Model
* 'C': 1, 'gamma': 0.0001
* Accuracy: 0.7730377805660115
-----
### SVC Model
Accuracy: 0.5253032204098703
-----
### Random Forest

                precision    recall  f1-score   support

     CANDIDATE       0.65      0.64      0.65       562
     CONFIRMED       0.66      0.68      0.67       573
FALSE POSITIVE       0.98      0.98      0.98      1256

     micro avg       0.83      0.83      0.83      2391
     macro avg       0.76      0.76      0.76      2391
  weighted avg       0.83      0.83      0.83      2391
  
  ---------------------------------------------
  
Comparing the models, we can see that tuning the SVM model increased the accuracy, and that the untuned SVC model, by comparison, was woefully inaccurate. Random Forest predicted a 65% accuracy rate for finding a candidate planet and a 66% accuracy rate at predicting a hidden planet. What's comforting, however, is that it identified false positives at an impressive 98% accuracy rate. 
