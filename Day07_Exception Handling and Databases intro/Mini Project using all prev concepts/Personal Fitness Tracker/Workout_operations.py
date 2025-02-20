import Workout as work

class Workout_operations:
    def __init__(self):
        pass
    
    def enter_workout(self, date, workout, duration, calories):
        workout_obj = work.Workout(date, workout, duration, calories)
        return workout_obj
    
    def view_workout(self, file_name):
        try:
            with open(file_name, 'r') as file:
                return file.read()
        except FileNotFoundError:
            return "Error: File not found"
        except Exception:
            return "Error: Unknown error occured!"
        
    def save_workout(self, file_name, workout_obj):
        try:
            data = workout_obj.date+ ": "+ workout_obj.workout+ " for "+ workout_obj.duration+ ", "+ workout_obj.calories+ " calories burned!"
            with open(file_name, 'a') as file:
                file.write(workout_obj.display_workout()+"\n")
            return "Data Saved successfully!"
        except FileNotFoundError:
            return "Error: File not found"
        except Exception as e:
            return "Error: Unknown error occured!", e
    
    def load_workout(self, file_name):
        try:
            with open(file_name, 'r') as file:
                return file.read()
        except FileNotFoundError:
            return "Error: File not found"
        except Exception:
            return "Error: Unknown error occured!"
    