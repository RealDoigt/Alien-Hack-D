# Contributing to Alien-Hack
Before you even begin, you have to contact Doigt by direct message on Discord. You can find him in the [D Language Code Club](https://discord.gg/bMZk9Q4). Random PRs from people we don't know will be ignored. The only exception to this is if you find and fix a security vulnerability, in which case, your PR's title must begin with \[Security Fix].

## Rules
1. Don't deviate from our style conventions.
2. Don't directly edit main; create a new branch and make a PR once the changes are ready.
3. Rule 2 doesn't apply if you forked the project.
4. No merge without a code review from someone other than the author of the PR.
5. Rule 4 doesn't apply to Doigt if the changes are only text documents.

## Style Conventions
We mostly follow the official D style conventions which can be read [here](https://dlang.org/dstyle.html) with some alterations and additions here and there. Listed here are the differences.

1. If we can use UFCS, we use it. This contrary to the official D style conventions.
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
