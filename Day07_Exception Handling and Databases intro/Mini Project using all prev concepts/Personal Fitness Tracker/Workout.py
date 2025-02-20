class Workout:
    def __init__(self, date, workout, duration, calories):
        self.date = date
        self.workout = workout
        self.duration = duration
        self.calories = calories
    def update_workout(self, date, workout, duration, calories):
        self.date = date
        self.workout = workout
        self.duration = duration
        self.calories = calories
    def display_workout(self):
        data = self.date+ ": "+ self.workout+ " for "+ self.duration+ ", "+ self.calories+ " calories burned!"
        return data