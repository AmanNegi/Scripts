## Setup 💻 

> Pre-requisitives: Git, GCC compiler

1. Go to your `C` drive base path.
2. Open terminal at the same place.
3. Clone the repository using the command below:
   `git clone https://github.com/AmanNegi/Scripts.git`
4. You will now be able to see a `Scripts` folder in your `C:` drive.
5. Next, we will add the folder path to Environment Variables.
6. Copy the path of the `Scripts` folder, it would be like this:
   `C:\Scripts`.
7. Add this path to Environment Variables and you are good to go!

## How to use 🤗

Simply go to your terminal, and run the below command:

`sh gplus.sh test.cpp`

If, you want to specify an `input.txt` as input, simply pass it's name as the 2nd argument:

`sh gplus.sh test.cpp input.txt`

> NOTE: Both files should be available at same level

## Making it more swift 🐤

1. Install [Espanso](https://espanso.org/).
2. Next, open `C:\Users\user\AppData\Roaming\espanso` in VSCode.
3. Open, `base.yml` and add the below lines at end:

```yml
- trigger: ":++"
  replace: "sh gplus.sh "
```

4. Now simply, type `:++` anywhere and it will be replaced with `sh gplus.sh`.

### 🚀🚀🚀 Support = Star 🚀🚀🚀🚀