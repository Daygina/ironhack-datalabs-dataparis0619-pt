#not yet finished!
print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')

num1 = input('Please choose your first number (0-5): ')
action = input('What do you want to do? plus or minus: ')
num2 = input('Please choose your second number (0-5): ')
numbers={'zero': 0,'one': 1, 'two':2, 'three': 3, 'four': 4, 'five': 5, 'six':6, 'seven':7, 'eight': 8, 'nine':9, 'ten': 10}
results={'zero': 0,'one': 1, 'two':2, 'three': 3, 'four': 4, 'five': 5, 'six':6, 'seven':7, 'eight': 8, 'nine':9, 'ten': 10}
def addition(num1,num2):
    return num1 + num2

def soustraction(num1,num2):
    return num1-num2
if num1 and num2 in numbers:
    if action =='plus':
        result=addition(numbers[num1],numbers[num2])
        print(num1, action, num2, 'equals', result)
    elif action == 'minus':
        result= soustraction(numbers[num1],numbers[num2])
        print(num1, action, num2, 'equals', result)
        
else:
    print("I am not able to answer this question. Check your input.")
    
print("Thanks for using this calculator, goodbye :)")