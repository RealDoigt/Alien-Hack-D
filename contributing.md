# Contributing to Alien-Hack
Before you even begin, you have to contact Doigt by direct message on Discord. You can find him in the [D Language Code Club](https://discord.gg/bMZk9Q4). Random PRs from people we don't know will be ignored. The only exception to this is if you find and fix a security vulnerability, in which case, your PR's title must begin with \[Security Fix].

## Rules
1. Don't deviate from our style conventions.
2. Don't directly edit main; create a new branch and make a PR once the changes are ready.
3. Rule 2 doesn't apply if you forked the project.
4. No merge without a code review from someone other than the author of the PR.
5. Rule 4 doesn't apply to Doigt if the changes are only text documents.
6. No merge can be done if the branch or fork being merged in has any commit behind main.

## Style Conventions
We mostly follow the official D style conventions which can be read [here](https://dlang.org/dstyle.html) with some alterations and additions here and there. Listed here are the differences.

1. If you can use UFCS, use it. This contrary to the official D style conventions.
2. There should always be an empty line between statements. So something like this example from the page linked above violates our style conventions:
```d
if (…)
{
    …
}
else if (…)
{
    …
}
```
Instead, do this:
```d
if (…)
{
    …
}

else if (…)
{
    …
}
```
3. No spacing for `cast` and `..`, so this example from the page linked above violates our style conventions:
```d
a + b
a / b
a == b
a && b
arr[1 .. 2] // WRONG
int a = 100;
b += 1;
short c = cast(short) a; // WRONG
filter!(a => a == 42);
```
Do this instead:
```d
a + b
a / b
a == b
a && b
arr[1..2]
int a = 100;
b += 1;
short c = cast(short)a;
filter!(a => a == 42);
```
4. No unittests. No asserts. No comments. No documentation in the code.
   * Your code must compile and do what it is supposed to do.
     * You can create a test branch to test it or write temporary test code, but that's it.
   * If your code needs a comment to explain what it does, then your code needs to be rewritten.
     * Exception: If you use bitwise or bitshift operators, you MUST comment.
     * Exception: You are doing low level optimisations.
6. Each class, struct and union must be in its own module.
7. Modules which do similar things must be grouped together in their own super module and that super module must have its own folder and a `package.d`.
8. No preference for local vs global imports. Keep in mind that the project prefers an architecture where each thing is its own module,
9. Don't use annotations.
10. No preference for variable declaration style, so both of these are good:
```d
class MyClass
{
    // good
    int    a;
    double b;

    // good
    double y;
    int x;
}
```
However, while this will not be enforced, the longer lines _should_ be on top and the smaller lines _should_ be at the bottom.

11. For functions with a long parameter list, apply the Allman brace style. Do this:
```d
void myFunctionWithLotsOfParams
(
    type param,
    type param,
    type param,
    type param,
    ...
)
{
    ...
}
```
Not this:
```d
void myFunctionWithLotsOfParams(
    type param,
    type param,
    type param,
    type param,
    ...
)
{
    ...
}
```
And not this:
```d
void myFunctionWithLotsOfParams(type param, type param, type param, type param, ...)
{
    ...
}
```
This also applies to any array initialisation, statement and function call. You know you have a line that is too long and which needs the above treatment when your line wraps around in your editor (keep it around 80~100 columns) or if your array being initialised has more than 3 elements.
12. If there is only one line of code after your statement, then the braces must be omitted.
13. For single-line control flow statements, the code which follows must be on the same line as the statement if the statement has only one condition or if it is a very short for/foreach declaration. This does not apply if the statements are nested.
```d
// CORRECT
if (myVar % 2 == 0) myVar = someNewValue;

if (myVar % 2 == 0 && someOtherCondition)
    myVar = someNewValue;

for (int i; i < max; ++i) myArr[i] = uniform(0, 50);
while (true) doSomething;

if (manyThings.isValid)
    foreach (thing; manyThings) thing.commit;

// WRONG
if (manyThings.isValid) foreach (thing; manyThings) thing.commit;
if (myVar % 2 == 0 && someOtherCondition) myVar = someNewValue;

if (myVar % 2 == 0)
    myVar = someNewValue;
```
