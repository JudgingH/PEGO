# PEGO
Official implementation of the paper: **Parameter-Efficient Group with Orthogonal Regularization for Domain Generalization** (ECCV 2024 Poster).

Paper arxiv version: [https://arxiv.org/abs/2407.15085](https://arxiv.org/abs/2407.15085).

<img width="600" alt="method" src="https://github.com/user-attachments/assets/c6a9ff8e-bea1-491b-8301-d4564c6c1a8c">

## How to Run

### Dependencies
The environment must contain Python, Cuda, PyTorch and Torchvision. You should run this command on your environment:
```
pip install -r requirements.txt
```

### Datasets
We use five common datasets in DomainBed evaluation benchmarks, including PACS, VLCS, OfficeHome, TerraIncognita and DomainNet. You can download them by this command:
```
python -m domainbed.scripts.download --data_dir=/your/datasets/path
```

### Simple to Run
You can run all experiments through **run.sh**. First, modify the "*data_dir*" in the **run.sh** to your local dataset location. Then, run experiments on different datasets using the following commands:
#### PACS
```
bash run.sh pacs
```
#### VLCS
```
bash run.sh vlcs
```
#### OfficeHome
```
bash run.sh on
```
#### TerraIncognita 
```
bash run.sh terra
```
#### DomainNet
```
bash run.sh dn
```
We adopt the training-domain validation strategy for hyperparameters search and model selection. The hyperparameters in the current **run.sh** can be used for reproduce the results in our paper. You can also adjust hyperparameters (*e.g.*, balancing coefficient, the rank of LoRA, the numbers of LoRA modules) by modifying **run.sh**.

## Acknowledgements
Our code is built on the basis of DomainBed ([https://github.com/facebookresearch/DomainBed](https://github.com/facebookresearch/DomainBed)) and MIRO ([https://github.com/khanrc/miro](https://github.com/khanrc/miro)). Sincere thanks to the contributors of these repositories.
