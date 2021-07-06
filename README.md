# StellarCartography

An experimental astronomy library, written in [Pharo](https://pharo.org/).

## Loading instructions

### Starting from a Pharo image

Open a playground window (`Ctrl+O+W`) and evaluate:

```smalltalk
Metacello new baseline: 'StellarCartography';
    repository: 'github://303adastra/StellarCartography:main';
    load.
```

Note: Evaluate by highlighting the text, then either right-click on the highlighted text and click `Do it` or press `Ctrl+D`.

### Starting from the shell

Clone the repo:

```shell
git clone https://github.com/303adastra/StellarCartography.git
cd StellarCartography
```

Download the 64-bit Pharo image + VM into the `StellarCartography` directory and start the Pharo-UI:

```shell
curl get.pharo.org/64/stable+vm | bash
./pharo-ui
```

In the Pharo-UI, open a playground window (`Ctrl+O+W`) and evaluate:

```smalltalk
Metacello new baseline: 'StellarCartography';
   repository: 'gitlocal://./src';
   load.
```

Note: Evaluate by highlighting the text, then either right-click on the highlighted text and click `Do it` or press `Ctrl+D`.

## Accessing parameters for celestial objects

Once the `StellarCartography` package has been loaded into your Pharo image, you can highlight the following text in a Playground window and click 'Print it' or press 'Ctrl+P' to evaluate and print the Earth's rotation period:

```smalltalk
Earth rotationPeriod.
```

Note: Evaluating the above expression returns a `Duration` that prints as `0:23:56:04`. `Duration` objects can also be expressed as a unit of time, e.g., `Earth rotationPeriod asSeconds`.
