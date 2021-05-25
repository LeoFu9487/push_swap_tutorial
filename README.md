# push_swap_tutorial

### Visualize Radix Sort

First, read the algorithm in the following article :

Chinese version :

https://medium.com/台灣人-ecole42/cursus-push-swap-582d5108c537

English version : 

https://leofu890806.medium.com/push-swap-tutorial-fa746e6aba1e

Then you can run the following command to see how this algorithm works

```bash radix_sort_solution.sh <numbers> ```

(Reminder : duplicate numbers will cause an error.)

For example

```bash radix_sort_solution.sh 9 4 8 7 ```

will show you how we sort 9 4 8 7 with radix sort

![step1](https://user-images.githubusercontent.com/70040774/119062284-aa864c00-b9d6-11eb-9ed8-ba24efeb457e.png)

![step2](https://user-images.githubusercontent.com/70040774/119062295-aeb26980-b9d6-11eb-8fd0-5aa7567f20d7.png)

![step3](https://user-images.githubusercontent.com/70040774/119062298-b114c380-b9d6-11eb-87fa-9b7d08c5dcfd.png)


### Test Radix Sort

Now you finish your radix sort algorithm and you want to test it ?

First, ```vim radix_sort_test.sh``` and set the variable ```ROOT``` as the path of the root of your repository

Then

```bash radix_sort_test.sh <numbers>```

(Reminder : duplicate numbers will cause an error.)

For example

```bash radix_sort_test.sh 9 4 8 7 1 2 3```

will show you how your push_swap sort these numbers (those numbers are simplified and in base 2)

![base2](https://user-images.githubusercontent.com/70040774/119062455-2a141b00-b9d7-11eb-9c0e-778e50afba2c.png)

### Clean

```bash clean.sh```

will clean everything

### Contact : 

yfu@student.42lyon.fr

Or you can also DM me on the slack
