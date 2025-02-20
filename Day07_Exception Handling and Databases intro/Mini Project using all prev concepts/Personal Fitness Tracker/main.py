import Workout_operations as workout_op
import Workout

print("---------------------------------------")
print("------ PERSONAL FITNESS TRACKER -------")
work_op = workout_op.Workout_operations()
workout = Workout.Workout("", "", "", "")
while True:
    print("---------------------------------------")
    print("1. ADD WORKOUT")
    print("2. VIEW WORKOUT")
    print("3. SAVE WORKOUT")
    print("4. LOAD WORKOUT")
    print("5. EXIT")
    ch = int(input("Enter your choice...\n"))
    if ch==1:
        date = input("Enter workout date(YYYY-MM-DD): ")
        work_type = input("What workout are you doing? ")
        duration = input("For how much time? ")
        calories = input("Calroes burnt? ")
        workout = work_op.enter_workout(date, work_type, duration, calories)
        print("Workout ADDED successfully!")
    elif ch==2:
        file_name = input("Enter file name to view your workouts: ")
        print(work_op.view_workout(file_name+".txt"))
    elif ch==3:
        file_name = input("Enter file name to save your workouts: ")
        if not workout.date:
            print("Please first enter workout using option 1 !!")
        else:
            print(work_op.save_workout(file_name+".txt", workout))
    elif ch==4:
        file_name = input("Enter file name to load your workouts: ")
        file_data = (work_op.load_workout(file_name+".txt"))
        if file_data != "":
            print("Data Loaded Successfully!!")
    else:
        print("------------- THANK YOU---------------")
        break
        
print("---------------------------------------")
        