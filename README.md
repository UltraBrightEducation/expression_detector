## Facial Expression Detection


#### Environment
This code repository should be executed in a virtualenv or conda environemnt. If you need to
create such an environment, we recommend using [`conda`](https://conda.io/miniconda.html).

After miniconda is installed.
Use the following command to create the environment:
```bash
conda create -n expression_detector -y python=3.6
```

Next, activate the environment
```bash
source activate expression_detector
```

*AFTER* activating the environment, first install `ipywidget` and create a kernel using the 
`expression_detector` environment such that we can access the same environment within jupyter notebook
```bash
pip install ipywidgets && jupyter nbextension enable --py widgetsnbextension && \
python -m ipykernel install --user --name expression_detector --display-name "Python (expression_detector)"
```

While the conda environment is activated, install all library dependencies
```bash
pip install -r requirements.txt
```

