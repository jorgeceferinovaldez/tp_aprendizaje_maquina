# Instalación de librería Pycaret

# Tabla de Contenidos

<a id="indice"></a>

<div>
    <ul>
        <li>
            <span>
                <a href="#importacion">
                    <span>1&nbsp;&nbsp;</span>
                    <strong>Windows 10/11</strong>
                </a>
            </span>
        </li>
        <li>
            <span>
                <a href="#carga"><span>2&nbsp;&nbsp;</span>
                    <strong>GNU/Linux</strong>
                </a>
            </span>
        </li>
        <li>
            <span>
                <a href="#eda">
                    <span>3&nbsp;&nbsp;</span>
                    <strong>Mac OS</strong>
                </a>
            </span>
        </li>
    </ul>
</div>

## 1.- Windows

1.1. Instalar CUDA

1.1.1 Instalar CUDA Toolkit
TODO Falta

1.1.2 Instalar cuDNN

TODO Falta

1.2. Dentro del entorno de Python
Sea venv o conda.

- 2.2.1 Instalamos pycaret de manera completa (la cual incluye GPU)

```bash
    pip install --upgrade scikit-learn 'pycaret[full]'
```


## 2.- GNU/Linux

2.1. Instalar CUDA Toolkit

En este caso emplearé la distribución Pop OS, la cual esta basada en Ubuntu.

- 2.1.1 Actualizamos el sistema
```bash
    sudo apt update
    sudo apt upgrade
```

- 2.1.2 Instalamos los Controladores de NVIDIA.
Generalmente cuando instalamos la versión descargada con soporte NVIDIA ya lo tiene. Pero por las dudas lo haremos:
```bash
    sudo apt install system76-driver-nvidia
```

- 2.1.3 Instalamos CUDA Toolkit
```bash
    sudo apt install nvidia-cuda-toolkit
```

- 2.1.4 Reiniciamos el sistem

2.2. Dentro del entorno de Python
Sea venv o conda.

- 2.2.1 Instalamos pycaret de manera completa (la cual incluye GPU)

```bash
    pip install --upgrade scikit-learn 'pycaret[full]'
```


## 3.- Mac OS

Las Mac basadas en el chip ARM M1, M2 y M3 traen incorporadas GPU que son compatibles con la librería pycaret.

3.1 Instalación de requisitos

3.1.1 Instalar brew.

En la página oficial de brew se encuentra todo los necesario para instalarlo.

3.1.2 Instalar cmake y librerias

```bash
    brew install cmake libomp
```

3.1.2 Instalamos pycaret de manera completa (la cual incluye GPU)

Dentro del entorno de Python ya sea venv o conda

```bash
    pip install --upgrade scikit-learn 'pycaret[full]'
```