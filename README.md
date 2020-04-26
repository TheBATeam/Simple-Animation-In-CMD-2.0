# Simple-Animation-In-CMD-2.0
In the **Simple Animation In CMD 2.0** , we used a simple algorithm to fulfill our task of putting a string on the console at a specified location, i.e. **x,y coordinates**. In this article, we’re going to look at running **multiple animations** at once, which will require some batch code magic!

![Simple Animation in CMD 2.0](https://i1.wp.com/www.thebateam.org/wp-content/uploads/2020/03/Simple-Animation-2.0.gif?fit=550%2C402&ssl=1)

# SIMPLE ANIMATION IN CMD 2.0 | ADVANCED BATCH METHOD
![Animating Two Text Strings in CMD](https://i0.wp.com/www.thebateam.org/wp-content/uploads/2020/01/2-1.png?resize=768%2C513&ssl=1)

# MAKE ANIMATION IN CMD? – ADVANCED METHOD
Let’s suppose if we want to put a string “Karanveer” on the console at the location 5,7 then we only have to run a loop (which may be a ‘for loop’) to leave 6 empty lines before printing the string {Because the string will be on the 7th line}.

**So, we have to leave {7-1=6 lines}**.

We also will have to run a loop to put the required spaces before the string. So, we require 5 spaces before the string, thus printing it on the console.

![Two Moving Strings using BatBox](https://i1.wp.com/www.thebateam.org/wp-content/uploads/2020/03/Simple-Animation-2.0.gif?w=600&ssl=1)

Hence, the string will be printed at the required location on the console. However, this animation is taking place in the CMD console. If you remember from our **last animation article**, its very hard to have **multiple animations** at once.

So, we **need to use a plugin** to print the text we want within the previous algorithm. By doing this, we can detect when the two strings bump into each other and have them react accordingly! But, the **collision** among themselves may be undetermined. So, using another **Batch plugin** will make this work easier for us.

So, we are using a batch plugin in this version of the Batch Animation. I’ve created 2 different test scripts that use 2 different Batch plugins, **Batbox.exe** & **fn.dll**. Each of them has their own qualities. **Batbox.exe** can take multiple commands in a single go,
whilst **fn.dll** is fast and responsive in repetitive calls from the batch file.

[Read Full Artcle](https://www.thebateam.org/2020/01/simple-animation-in-cmd-console-ver-2-0-advanced/)
