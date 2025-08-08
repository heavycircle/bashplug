# bashplug - A Bash Plugin Manager

bashplug is an easy-to-use framework for installing and managing bash plugins.

## Installation

You can install `bashplug` by simply cloning:

```bash
git clone https://github.com/heavycircle/bashplug.git ~/.bashplug
```

## Getting Started

#### Setup

After installation, add the following to your `.bashrc`:

```bash
. ~/.bashplug/bashplug
```

Then we can choose our plugins list and enable them:

```bash
plugins=(copyfile copypath)
bashplug init "${plugins[@]}"
```

## bashplug Functions

#### List

You can list the functions to see the available default, custom, and private plugins:

```bash
bashplug list
```
