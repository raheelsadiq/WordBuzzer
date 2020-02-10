# WordBuzzer

## Work breakdown

1. Paper work, inital breakdown, and boundries for VIP : 30min 
2. Test started : Inital github setup, and initial vip architecture using the template - 1 hour
3. Data models, Interactor flow and words read from file and a small test case for worker - 1 hour
4. Simple game board Design - 1 Hour 
5. GamePlay, winner and test cases - 2.5 hours

Total time = 6 hours

## Overview
This demo is made using VIP architecture. I tried to focus more on Architecture and data flow, rather than the UI, because it does take to think implement, I wanted to showcase my clean coding/architecture skills. 
Few test case are also writter to demonstrate how it can be done in VIP architecutre.

## Tests
We can write test for boundry methods, boundry methods are those which are declared in the protocols. To test those methods, we'll to mock the next VIP iteration boundry methods, which is very straight forward as those are just protocols. We can use Spying to test those mocks. For demonstration purpose I did only one.


## Improvments
### UI and animations
Time out if no one answers.
Animation delay for win or lose for states
