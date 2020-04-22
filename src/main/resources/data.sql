insert into blog_post_entity values (1, 'https://s3.amazonaws.com/prod-www-blackline-com/blog/wp-content/uploads/2019/01/29163118/A-Conversation-With-BlackLines-Machine-Learning-Experts.jpg', '<div class="featured-text text-center text-lg-left">
      <h4>Machine learning paper</h4>
      <p class="text-black-50 mb-0">One of the papers worked, was the use of machine learning inorder to find code vulnerabilities by a Neural Network model. This model used RNN and text processing and the paper can be found <a href="https://www.sciencedirect.com/science/article/abs/pii/S0957417419308735">here</a>.</p>
  </div>', '- Support for finding three classes Healthy people, finding people with Pneumonia and people with other pre-existing conditions : (URTI, Asthma, COPD, LRTI, Bronchiectasis, Bronchiolitis).
        - Support for four different audio recording devices :  AKG C417L Microphone,3M Littmann Classic II SE Stethoscope, 3M Litmmann 3200 Electronic Stethoscope, WelchAllyn Meditron Master Elite Electronic Stethoscope
        - Only requires age, gender,  and recording of the respitory cycle.

        # Respiratory ML Analysis

        <img src="http://www.myiconfinder.com/uploads/iconsets/256-256-abb3bbe6b838954823b5ee1519f2b8e9-cancer.png" class="img-fluid">

        # Setting up
        The model was made inside the [deepo docker image](https://imagehttps://hub.docker.com/r/ufoym/deepo/).

        The only things you need to be aware of  : <br>
        + You need three files for the Model Test.ipynb to work
            + "Respiratory_Sound_Database.zip" which is the our data
            + "output.zip" which is the processed data
            + "gl_after_np.csv" : information processed from the name of each recording : the latest version of this file is provided in the repository.
        + You will need the data set from [Kaggle](https://www.kaggle.com/vbookshelf/respiratory-sound-database). This data set has duplicates, inorder for the models to work please download the data, unzip and the zip it again, named as "Respiratory_Sound_Database.zip". Or to download it from google drive. wget provided in CD.sh.
        + After You have downloaded "Respiratory_Sound_Database.zip" you can generate both "gl_after_np.csv" and "output.zip" by :
            + runing "./data_set_up/data.py"
            + downloading them through github and google drive. Wget is provided inside the CD.sh.
        + All the externall libraries that are not provided inside the image can be installed using "requirements_set_up.sh"
        + The last step for testing the model is to set the "gpu_n" value to the number of gpus in "Model Test.ipynb".

        # Model
        The architecture of the model can be read at ./models but here is a general scheme of the model :
        <img src="https://i.imgur.com/LUPuhmp.png" class="img-fluid"><br>

        # Test result
        The Recall, Precision, and F1-Score for all the three classes have been measured and are as follows : <br>
        <img src="https://i.imgur.com/zlnhhlK.png" class="img-fluid"><br>
        <img src="https://i.imgur.com/Rmk9253.png" class="img-fluid"><br>
        <img src="https://i.imgur.com/0tT5ddk.png" class="img-fluid"><br>


        <br>

        The links for these graphs are available at plotly for further analysis: [Healthy](https://plotly.com/~unheardPlayer/30/#/), [Pneumonia](https://plotly.com/~unheardPlayer/32/#/), [Pre Existing Conditions](https://plotly.com/~unheardPlayer/34/#/).
', '<h1><i>Blog post title:</i></h1><br>');
insert into blog_post_entity values (2, 'https://s3.amazonaws.com/prod-www-blackline-com/blog/wp-content/uploads/2019/01/29163118/A-Conversation-With-BlackLines-Machine-Learning-Experts.jpg', '<div class="featured-text text-center text-lg-left">
      <h4>Machine learning paper</h4>
      <p class="text-black-50 mb-0">One of the papers worked, was the use of machine learning inorder to find code vulnerabilities by a Neural Network model. This model used RNN and text processing and the paper can be found <a href="https://www.sciencedirect.com/science/article/abs/pii/S0957417419308735">here</a>.</p>
  </div>', '- Support for finding three classes Healthy people, finding people with Pneumonia and people with other pre-existing conditions : (URTI, Asthma, COPD, LRTI, Bronchiectasis, Bronchiolitis).
        - Support for four different audio recording devices :  AKG C417L Microphone,3M Littmann Classic II SE Stethoscope, 3M Litmmann 3200 Electronic Stethoscope, WelchAllyn Meditron Master Elite Electronic Stethoscope
        - Only requires age, gender,  and recording of the respitory cycle.

        # Respiratory ML Analysis

        <img src="http://www.myiconfinder.com/uploads/iconsets/256-256-abb3bbe6b838954823b5ee1519f2b8e9-cancer.png" class="img-fluid">

        # Setting up
        The model was made inside the [deepo docker image](https://imagehttps://hub.docker.com/r/ufoym/deepo/).

        The only things you need to be aware of  : <br>
        + You need three files for the Model Test.ipynb to work
            + "Respiratory_Sound_Database.zip" which is the our data
            + "output.zip" which is the processed data
            + "gl_after_np.csv" : information processed from the name of each recording : the latest version of this file is provided in the repository.
        + You will need the data set from [Kaggle](https://www.kaggle.com/vbookshelf/respiratory-sound-database). This data set has duplicates, inorder for the models to work please download the data, unzip and the zip it again, named as "Respiratory_Sound_Database.zip". Or to download it from google drive. wget provided in CD.sh.
        + After You have downloaded "Respiratory_Sound_Database.zip" you can generate both "gl_after_np.csv" and "output.zip" by :
            + runing "./data_set_up/data.py"
            + downloading them through github and google drive. Wget is provided inside the CD.sh.
        + All the externall libraries that are not provided inside the image can be installed using "requirements_set_up.sh"
        + The last step for testing the model is to set the "gpu_n" value to the number of gpus in "Model Test.ipynb".

        # Model
        The architecture of the model can be read at ./models but here is a general scheme of the model :
        <img src="https://i.imgur.com/LUPuhmp.png" class="img-fluid"><br>

        # Test result
        The Recall, Precision, and F1-Score for all the three classes have been measured and are as follows : <br>
        <img src="https://i.imgur.com/zlnhhlK.png" class="img-fluid"><br>
        <img src="https://i.imgur.com/Rmk9253.png" class="img-fluid"><br>
        <img src="https://i.imgur.com/0tT5ddk.png" class="img-fluid"><br>


        <br>

        The links for these graphs are available at plotly for further analysis: [Healthy](https://plotly.com/~unheardPlayer/30/#/), [Pneumonia](https://plotly.com/~unheardPlayer/32/#/), [Pre Existing Conditions](https://plotly.com/~unheardPlayer/34/#/).
', '<h1><i>Blog post title:</i></h1><br>');
